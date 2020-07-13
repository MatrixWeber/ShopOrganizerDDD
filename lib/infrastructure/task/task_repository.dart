import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/i_task_repository.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task.dart';
import 'package:firebase_ddd_tutorial/infrastructure/task/task_dtos.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task_failure.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final Firestore _firestore;

  TaskRepository(this._firestore);

  @override
  Future<Either<TaskFailure, Unit>> create(TaskDescription task) async {
    try {
      final userDoc = await _firestore.userDocument();
      final taskDto = TaskDto.fromDomain(task);

      await userDoc.taskCollection
          .document(taskDto.id)
          .setData(taskDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handleInsufficientPermissionAndUnexpectedPlatformException(e);
    }
  }

  Either<TaskFailure, Unit>
      _handleInsufficientPermissionAndUnexpectedPlatformException(
          PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const TaskFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const TaskFailure.unexpected());
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> update(
      TaskDescription taskDescription) async {
    try {
      final userDoc = await _firestore.userDocument();
      final taskDto = TaskDto.fromDomain(taskDescription);

      await userDoc.taskCollection
          .document(taskDto.id)
          .updateData(taskDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  @override
  Future<Either<TaskFailure, Unit>> delete(
      TaskDescription taskDescription) async {
    try {
      final userDoc = await _firestore.userDocument();
      final taskId = taskDescription.id.getOrCrash();

      await userDoc.taskCollection.document(taskId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  Either<TaskFailure, Unit> _handlePlatformExceptions(PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const TaskFailure.insufficientPermissions());
    } else if (e.message.contains('NOT_FOUND')) {
      // TODO log.error(e.toString);
      return left(const TaskFailure.unableToUpdate());
    } else {
      // TODO log.error(e.toString);
      return left(const TaskFailure.unexpected());
    }
  }
}