import 'package:dartz/dartz.dart';

import 'worker.dart';
import 'worker_failure.dart';

abstract class IWorkerRepository {
  Future<Either<WorkerFailure, Unit>> create(Worker worker);
  Future<Either<WorkerFailure, Unit>> update(Worker worker);
  Future<Either<WorkerFailure, Unit>> delete(Worker worker);
}
