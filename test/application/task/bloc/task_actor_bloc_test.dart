import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/application/task/task_actor/task_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/i_task_repository.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task_failure.dart';
import 'package:firebase_ddd_tutorial/infrastructure/task/task_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFirestore extends Mock implements Firestore {}

class MockTaskRepository extends Mock implements TaskRepository {
  final MockFirestore _mockFirestore;
  MockTaskRepository(this._mockFirestore);
}

void main() {
  TaskActorBloc bloc;
  ITaskRepository _taskRepository;
  MockFirestore _mockFirestore;
  setUp(() {
    _mockFirestore = MockFirestore();
    _taskRepository = MockTaskRepository(_mockFirestore);
    bloc = TaskActorBloc(_taskRepository);
  });

  test('initial state should be Initial', () {
    // assert
    expect(bloc.state, equals(const TaskActorState.initial()));
  });

  test(
      'should emit state initial, actionInProgress and deleteSuccess when mocking the delete function to return right(unit) and adding the deleted() event to the bloc',
      () async {
    //? arrange
    final taskDescription = TaskDescription.empty();
    when(_taskRepository.delete(taskDescription)).thenAnswer((_) async {
      return const Right(unit);
    });

    final expected = [
      const TaskActorState.actionInProgress(),
      const TaskActorState.deleteSuccess(),
    ];
    expectLater(bloc, emitsInOrder(expected));
    //? act
    bloc.add(TaskActorEvent.deleted(taskDescription));
    await untilCalled(_taskRepository.delete(taskDescription));
    //? assert
    verify(_taskRepository.delete(taskDescription));
  });
  test(
      'should emit state initial, actionInProgress and deleteFailure when mocking the delete function to return right(unit) and adding the deleted() event to the bloc',
      () async {
    //? arrange
    const taskFailure = TaskFailure.unexpected();
    final taskDescription = TaskDescription.empty();
    when(_taskRepository.delete(taskDescription)).thenAnswer((_) async {
      return const Left(taskFailure);
    });

    final expected = [
      const TaskActorState.actionInProgress(),
      const TaskActorState.deleteFailure(taskFailure),
    ];
    expectLater(bloc, emitsInOrder(expected));
    //? act
    bloc.add(TaskActorEvent.deleted(taskDescription));
    await untilCalled(_taskRepository.delete(taskDescription));
    //? assert
    verify(_taskRepository.delete(taskDescription));
  });
}
