import 'package:dartz/dartz.dart';

import 'task.dart';
import 'task_failure.dart';

abstract class ITaskRepository {
  Future<Either<TaskFailure, Unit>> create(TaskDescription taskDescription);
  Future<Either<TaskFailure, Unit>> update(TaskDescription taskDescription);
  Future<Either<TaskFailure, Unit>> delete(TaskDescription taskDescription);
}
