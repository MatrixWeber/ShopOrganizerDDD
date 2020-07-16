import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'worker.dart';
import 'worker_failure.dart';

abstract class IWorkerRepository {
  Stream<Either<WorkerFailure, KtList<Worker>>> watchAll();
  Future<Either<WorkerFailure, Unit>> create(Worker worker);
  Future<Either<WorkerFailure, Unit>> update(Worker worker);
  Future<Either<WorkerFailure, Unit>> delete(Worker worker);
}
