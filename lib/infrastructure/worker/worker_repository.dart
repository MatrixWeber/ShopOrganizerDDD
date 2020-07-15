import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/worker/i_worker_repository.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker.dart';
import 'package:firebase_ddd_tutorial/infrastructure/worker/worker_dtos.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IWorkerRepository)
class WorkerRepository implements IWorkerRepository {
  final Firestore _firestore;

  WorkerRepository(this._firestore);

  @override
  Future<Either<WorkerFailure, Unit>> create(Worker worker) async {
    try {
      final workerDoc = await _firestore.userDocument();
      final workerDto = WorkerDto.fromDomain(worker);

      await workerDoc.shopCollection
          .document()
          .workerCollection
          .document(workerDto.id)
          .setData(workerDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handleInsufficientPermissionAndUnexpectedPlatformException(e);
    }
  }

  Either<WorkerFailure, Unit>
      _handleInsufficientPermissionAndUnexpectedPlatformException(
          PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const WorkerFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const WorkerFailure.unexpected());
    }
  }

  @override
  Future<Either<WorkerFailure, Unit>> update(Worker worker) async {
    try {
      final workerDoc = await _firestore.userDocument();
      final workerDto = WorkerDto.fromDomain(worker);

      await workerDoc.shopCollection
          .document()
          .workerCollection
          .document(workerDto.id)
          .updateData(workerDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  @override
  Future<Either<WorkerFailure, Unit>> delete(Worker worker) async {
    try {
      final workerDoc = await _firestore.userDocument();
      final workerId = worker.id.getOrCrash();

      await workerDoc.shopCollection
          .document()
          .workerCollection
          .document(workerId)
          .delete();

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  Either<WorkerFailure, Unit> _handlePlatformExceptions(PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const WorkerFailure.insufficientPermissions());
    } else if (e.message.contains('NOT_FOUND')) {
      // TODO log.error(e.toString);
      return left(const WorkerFailure.unableToUpdate());
    } else {
      // TODO log.error(e.toString);
      return left(const WorkerFailure.unexpected());
    }
  }
}
