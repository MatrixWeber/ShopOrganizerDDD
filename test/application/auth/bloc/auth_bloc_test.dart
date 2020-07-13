import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_tutorial/infrastructure/auth/firebase_auth_facade.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/subjects.dart';

import '../../../infrastructure/auth/firebase_auth_facade_test.dart';

class MockAuthFacade extends Mock implements FirebaseAuthFacade {}

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {}

class MockUserInfo extends Mock implements UserInfo {}

class MockFirebaseUser extends Mock implements FirebaseUser {}

void main() {
  AuthBloc bloc;
  MockGoogleSignIn mockGoogleSignIn;
  MockFirebaseAuth mockFirebaseAuth;
  IAuthFacade mockAuthFacade;
  MockFirebaseUser mockFirebaseUser;
  MockGoogleSignInAccount mockGoogleSignInAccount;
  // MockUserInfo mockUserInfo;
  BehaviorSubject<MockFirebaseUser> user;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockGoogleSignIn = MockGoogleSignIn();
    mockAuthFacade = FirebaseAuthFacade(mockFirebaseAuth, mockGoogleSignIn);
    bloc = AuthBloc(mockAuthFacade);
    mockFirebaseUser = MockFirebaseUser();
    user = BehaviorSubject<MockFirebaseUser>();
    mockGoogleSignInAccount = MockGoogleSignInAccount();
    when(mockFirebaseAuth.onAuthStateChanged).thenAnswer((_) => user);
  });

  test('initial state should be Initial', () {
    // assert
    expect(bloc.initialState, equals(const Initial()));
  });

  test('should call the signOut()', () async {
    // arrange
    when(mockFirebaseAuth.signOut()).thenAnswer((_) async {
      user.add(mockFirebaseUser);
    });
    when(mockGoogleSignIn.signOut()).thenAnswer((_) async {
      user.add(mockFirebaseUser);
      return Future.value(mockGoogleSignInAccount);
    });
    final expected = [const Initial(), const Unauthenticated()];
    expectLater(bloc, emitsInOrder(expected));
    // act
    bloc.add(const SignedOut());
    await untilCalled(mockFirebaseAuth.signOut());
    await untilCalled(mockGoogleSignIn.signOut());
    // assert
    verify(mockFirebaseAuth.signOut());
    verify(mockGoogleSignIn.signOut());
  });

  group('getSignedInUser', () {
    test(
        'should call the getSignedInUser() when AuthCheckRequested event was added to the bloc',
        () async {
      // arrange
      when(mockFirebaseAuth.currentUser()).thenAnswer((_) async {
        user.add(mockFirebaseUser);
        return Future.value(MockAuthResult().user);
      });
      final expected = [const Initial(), const Unauthenticated()];
      expectLater(bloc, emitsInOrder(expected));
      // act
      bloc.add(const AuthCheckRequested());
      await untilCalled(mockFirebaseAuth.currentUser());
      // assert
      verify(mockFirebaseAuth.currentUser());
    });
  });
}
