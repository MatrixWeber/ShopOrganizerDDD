import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/application/user/user_form/user_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/user/user.dart';
import 'package:firebase_ddd_tutorial/infrastructure/user/user_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFirestore extends Mock implements Firestore {}

class MockUserRepository extends Mock implements UserRepository {
  final MockFirestore _mockFirestore;
  MockUserRepository(this._mockFirestore);
}

void main() {
  UserFormBloc bloc;
  MockUserRepository _userRepository;
  MockFirestore _mockFirestore;
  setUp(() {
    _mockFirestore = MockFirestore();
    _userRepository = MockUserRepository(_mockFirestore);
    bloc = UserFormBloc(_userRepository);
  });
  // test('should call the create() on repo', () async {
  //   // arrange
  //   // final user = user.empty();
  //   when(_userRepository.create(any)).thenAnswer((_) async {
  //     return Future.value(Right(unit));
  //   });
  //   // act
  //   bloc.add(const Saved());
  //   await untilCalled(_userRepository.create(any));
  //   // assert
  //   verify(_userRepository.create(any));
  // });
  test('should call the update() on repo', () async {
    // arrange
    final user = User.test();
    when(_userRepository.update(any)).thenAnswer((_) async {
      return Future.value(Right(unit));
    });
    // act
    bloc.add(Initialized(some(user)));
    bloc.add(const Saved());
    await untilCalled(_userRepository.update(any));
    // assert
    verify(_userRepository.update(any));
  });
}
