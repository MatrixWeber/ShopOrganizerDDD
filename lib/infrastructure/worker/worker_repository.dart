import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/worker/i_worker_repository.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker.dart';
import 'package:firebase_ddd_tutorial/infrastructure/worker/worker_dtos.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IWorkerRepository)
class WorkerRepository implements IWorkerRepository {
  final FirebaseFirestore _firestore;

  WorkerRepository(this._firestore);

  @override
  Stream<Either<WorkerFailure, KtList<Worker>>> watchAll() async* {
    // ? user/{user ID}/shops/{shop ID}/worker/{shop ID}
    final userDoc = await _firestore.userDocument();
    yield* userDoc.workerCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<WorkerFailure, KtList<Worker>>(
            snapshot.docs
                .map((doc) => WorkerDto.fromFirestore(doc).toDomian())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return _checkIfPlatformExceptionAndHandleInsufficientPermissionAndUnexpected(
          e);
    });
  }

  Either<WorkerFailure, KtList<Worker>>
      _checkIfPlatformExceptionAndHandleInsufficientPermissionAndUnexpected(e) {
    if (e is FirebaseException && e.message.contains('permission-denied')) {
      return left(const WorkerFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const WorkerFailure.unexpected('watch'));
    }
  }

  @override
  Future<Either<WorkerFailure, Unit>> create(Worker worker) async {
    try {
      final workerDoc = await _firestore.userDocument();
      final workerDto = WorkerDto.fromDomain(worker);

      await workerDoc.shopCollection
          .doc(workerDto.parentId)
          .workerCollection
          .doc(workerDto.id)
          .set(workerDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return _handleInsufficientPermissionAndUnexpectedPlatformException(e);
    }
  }

  Either<WorkerFailure, Unit>
      _handleInsufficientPermissionAndUnexpectedPlatformException(
          FirebaseException e) {
    if (e.message.contains('permission-denied')) {
      return left(const WorkerFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const WorkerFailure.unexpected('create'));
    }
  }

  @override
  Future<Either<WorkerFailure, Unit>> update(Worker worker) async {
    try {
      final workerDoc = await _firestore.userDocument();
      final workerDto = WorkerDto.fromDomain(worker);

      await workerDoc.shopCollection
          .doc()
          .workerCollection
          .doc(workerDto.id)
          .update(workerDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return _handlePlatformExceptions(e, 'update');
    }
  }

  @override
  Future<Either<WorkerFailure, Unit>> delete(Worker worker) async {
    try {
      final workerDoc = await _firestore.userDocument();
      final workerId = worker.id.getOrCrash();

      await workerDoc.shopCollection
          .doc()
          .workerCollection
          .doc(workerId)
          .delete();

      return right(unit);
    } on FirebaseException catch (e) {
      return _handlePlatformExceptions(e, 'delete');
    }
  }

  Either<WorkerFailure, Unit> _handlePlatformExceptions(
      FirebaseException e, String functionName) {
    if (e.message.contains('permission-denied')) {
      return left(const WorkerFailure.insufficientPermissions());
    } else if (e.message.contains('not-found')) {
      // TODO log.error(e.toString);
      return left(const WorkerFailure.unableToUpdate());
    } else {
      // TODO log.error(e.toString);
      return left(WorkerFailure.unexpected(functionName));
    }
  }
}
