import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/application/task/task_form/task_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task.dart';
import 'package:firebase_ddd_tutorial/infrastructure/task/task_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFirestore extends Mock implements FirebaseFirestore {}

class MockTaskRepository extends Mock implements TaskRepository {
  final MockFirestore _mockFirestore;
  MockTaskRepository(this._mockFirestore);
}

void main() {
  TaskFormBloc bloc;
  MockTaskRepository _taskRepository;
  MockFirestore _mockFirestore;
  setUp(() {
    _mockFirestore = MockFirestore();
    _taskRepository = MockTaskRepository(_mockFirestore);
    bloc = TaskFormBloc(_taskRepository);
  });

  // test('initial state should be Initial', () {
  //   final taskDescription = TaskDescription.empty();
  //   // assert
  //   expect(bloc.initialState, equals(TaskFormState.initial(taskDescription)));
  // });

  // test(
  //     'should emit state initial and proper task form state order when adding the TaskNameChanged to the bloc',
  //     () async {
  //   // arrange
  //   // final taskDescription = TaskDescription.empty();

  //   // final expected = [
  //   //   TaskFormState.initial(taskDescription),
  //   //   // TaskFormState(
  //   //   //   isEditing: false,
  //   //   //   saveFailureOrSuccessOption: none(),
  //   //   //   task: taskDescription,
  //   //   //   showErrorMessage: false,
  //   //   //   isSaving: false,
  //   //   // )
  //   // ];
  //   // expectLater(bloc, emitsInOrder(expected));
  //   // act
  //   bloc.add(const TaskNameChanged('test'));
  //   // await untilCalled(_taskRepository.update(taskDescription));
  //   // // assert
  //   // verify(_taskRepository.update(taskDescription));
  // });
  test('should call the create() on repo', () async {
    // arrange
    // final taskDescription = TaskDescription.empty();
    when(_taskRepository.create(any)).thenAnswer((_) async {
      return Future.value(Right(unit));
    });

    // final expected = [
    //   TaskFormState.initial(taskDescription),
    //   TaskFormState(
    //     isEditing: false,
    //     saveFailureOrSuccessOption: none(),
    //     task: taskDescription,
    //     showErrorMessage: false,
    //     isSaving: false,
    //   )
    // ];
    // expectLater(bloc, emitsInOrder(expected));
    // act
    bloc.add(const Saved());
    await untilCalled(_taskRepository.create(any));
    // assert
    verify(_taskRepository.create(any));
  });
  test('should call the update() on repo', () async {
    // arrange
    final taskDescription = TaskDescription.empty();
    when(_taskRepository.update(any)).thenAnswer((_) async {
      return Future.value(Right(unit));
    });

    // final expected = [
    //   TaskFormState.initial(taskDescription),
    //   // TaskFormState(
    //   //   isEditing: false,
    //   //   saveFailureOrSuccessOption: none(),
    //   //   task: taskDescription,
    //   //   showErrorMessage: false,
    //   //   isSaving: false,
    //   // )
    // ];
    // expectLater(bloc, emitsInOrder(expected));
    // act
    bloc.add(Initialized(some(taskDescription)));
    bloc.add(const Saved());
    await untilCalled(_taskRepository.update(any));
    // assert
    verify(_taskRepository.update(any));
  });

  // group('getSignedInUser', () {
  //   test(
  //       'should call the getSignedInUser() when AuthCheckRequested event was added to the bloc',
  //       () async {
  //     // arrange
  //     when(mockFirebaseAuth.currentUser()).thenAnswer((_) async {
  //       user.add(mockFirebaseUser);
  //       return Future.value(MockAuthResult().user);
  //     });
  //     final expected = [const Initial(), const Unauthenticated()];
  //     expectLater(bloc, emitsInOrder(expected));
  //     // act
  //     bloc.add(const AuthCheckRequested());
  //     await untilCalled(mockFirebaseAuth.currentUser());
  //     // assert
  //     verify(mockFirebaseAuth.currentUser());
  //   });
  // });
}
