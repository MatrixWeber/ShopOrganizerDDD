import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/application/user/user_actor/user_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/user/i_user_repository.dart';
import 'package:firebase_ddd_tutorial/domain/user/user.dart';
import 'package:firebase_ddd_tutorial/domain/user/user_failure.dart';
import 'package:firebase_ddd_tutorial/infrastructure/user/user_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFirestore extends Mock implements Firestore {}

class MockUserRepository extends Mock implements UserRepository {
  final MockFirestore _mockFirestore;
  MockUserRepository(this._mockFirestore);
}

void main() {
  UserActorBloc bloc;
  IUserRepository _userRepository;
  MockFirestore _mockFirestore;
  setUp(() {
    _mockFirestore = MockFirestore();
    _userRepository = MockUserRepository(_mockFirestore);
    bloc = UserActorBloc(_userRepository);
  });

  test('initial state should be Initial', () {
    // assert
    expect(bloc.state, equals(const UserActorState.initial()));
  });

  test(
      'should emit state initial, actionInProgress and deleteSuccess when mocking the delete function to return right(unit) and adding the deleted() event to the bloc',
      () async {
    //? arrange
    final user = User.empty();
    when(_userRepository.delete(user)).thenAnswer((_) async {
      return Right(unit);
    });

    final expected = [
      const UserActorState.initial(),
      const UserActorState.actionInProgress(),
      const UserActorState.deleteSuccess(),
    ];
    expectLater(bloc, emitsInOrder(expected));
    //? act
    bloc.add(UserActorEvent.deleted(user));
    await untilCalled(_userRepository.delete(user));
    //? assert
    verify(_userRepository.delete(user));
  });
  test(
      'should emit state initial, actionInProgress and deleteFailure when mocking the delete function to return right(unit) and adding the deleted() event to the bloc',
      () async {
    //? arrange
    const userFailure = UserFailure.unexpected();
    final user = User.empty();
    when(_userRepository.delete(user)).thenAnswer((_) async {
      return const Left(userFailure);
    });

    final expected = [
      const UserActorState.initial(),
      const UserActorState.actionInProgress(),
      const UserActorState.deleteFailure(userFailure),
    ];
    expectLater(bloc, emitsInOrder(expected));
    //? act
    bloc.add(UserActorEvent.deleted(user));
    await untilCalled(_userRepository.delete(user));
    //? assert
    verify(_userRepository.delete(user));
  });
}
