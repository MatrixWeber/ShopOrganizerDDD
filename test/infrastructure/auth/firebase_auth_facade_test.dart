import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ddd_tutorial/domain/auth/auth_failure.dart';
import 'package:firebase_ddd_tutorial/domain/auth/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/infrastructure/auth/firebase_auth_facade.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_ddd_tutorial/domain/auth/i_auth_facade.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {}

class MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {}

class MockFirebaseUser extends Mock implements User {}

class MockAuthCredential extends Mock implements AuthCredential {}

class MockGoogleAuthProvider extends Mock implements GoogleAuthProvider {}

class MockAuthResult extends Mock implements UserCredential {}

Future<void> main() async {
  IAuthFacade authFacade;
  MockGoogleSignIn mockGoogleSignIn;
  // Sign in.
  MockFirebaseAuth mockFirebaseAuth;
  EmailAddress email;
  Password password;

  setUp(() {
    mockGoogleSignIn = MockGoogleSignIn();
    mockFirebaseAuth = MockFirebaseAuth();
    authFacade = FirebaseAuthFacade(mockFirebaseAuth, mockGoogleSignIn);
  });

  group('firebaseAuthSignIn', () {
    group('firebaseAuthSignInWithEmailAndPassword', () {
      test('should return unit when email and password are valid', () async {
        // arrange
        const emailStr = 'abc@freenet.de';
        email = EmailAddress(emailStr);
        const passwordStr = '123456';
        password = Password(passwordStr);

        // act
        final result = await authFacade.signInWithEmailAndPassword(
            emailAddress: email, password: password);
        // assert
        verify(mockFirebaseAuth.signInWithEmailAndPassword(
            email: emailStr, password: passwordStr));
        expect(result, right(unit));
      });
      test(
          'should return left(AuthFailure.invalidEmailAndPasswordCombination()) when throws FirebaseException ERROR_USER_NOT_FOUND',
          () async {
        // arrange
        const emailStr = 'abc@freenet.de';
        email = EmailAddress(emailStr);
        const passwordStr = '123456';
        password = Password(passwordStr);
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: emailStr, password: passwordStr))
            .thenThrow(FirebaseAuthException(
                code: ERROR_USER_NOT_FOUND, message: 'If user not registered'));
        // act
        final result = await authFacade.signInWithEmailAndPassword(
            emailAddress: email, password: password);
        // assert
        expect(
            result,
            equals(
                const Left(AuthFailure.invalidEmailAndPasswordCombination())));
      });

      test(
          'should return left(AuthFailure.invalidEmailAndPasswordCombination()) when throws FirebaseException ERROR_WRONG_PASSWORD',
          () async {
        // arrange
        const emailStr = 'abc@freenet.de';
        email = EmailAddress(emailStr);
        const passwordStr = '123456';
        password = Password(passwordStr);
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: emailStr, password: passwordStr))
            .thenThrow(FirebaseAuthException(
          code: ERROR_WRONG_PASSWORD,
          message: 'If user entered wrong password',
        ));
        // act
        final result = await authFacade.signInWithEmailAndPassword(
            emailAddress: email, password: password);
        // assert
        expect(
            result,
            equals(
                const Left(AuthFailure.invalidEmailAndPasswordCombination())));
      });

      test(
          'should return left(AuthFailure.serverError()) when throws FirebaseException ERROR_EMAIL_ALREADY_IN_USE',
          () async {
        // arrange
        const emailStr = 'abc@freenet.de';
        email = EmailAddress(emailStr);
        const passwordStr = '123456';
        password = Password(passwordStr);
        when(mockFirebaseAuth.signInWithEmailAndPassword(
                email: emailStr, password: passwordStr))
            .thenThrow(FirebaseAuthException(
          code: ERROR_EMAIL_ALREADY_IN_USE,
          message: 'If email already in use',
        ));
        // act
        final result = await authFacade.signInWithEmailAndPassword(
            emailAddress: email, password: password);
        // assert
        expect(result, equals(const Left(AuthFailure.serverError())));
      });
    });

    group('firebaseAuthSignInWithGoogle', () {
      // final mockGoogleSignInAccount = MockGoogleSignInAccount();
      // final googleSignInAuthentication = MockGoogleSignInAuthentication();
      // test('should return unit when google sign in successful', () async {
      //   // arrange
      //   when(mockGoogleSignIn.signIn()).thenAnswer((_) =>
      //       Future<MockGoogleSignInAccount>.value(mockGoogleSignInAccount));

      //   when(mockGoogleSignInAccount.authentication).thenAnswer((_) =>
      //       Future<MockGoogleSignInAuthentication>.value(
      //           googleSignInAuthentication));

      //   final AuthCredential credential = GoogleAuthProvider.credential(
      //     idToken: '12345',
      //     accessToken: '6789',
      //   );

      //   when(mockFirebaseAuth.signInWithCredential(credential))
      //       .thenAnswer((_) async {
      //     return MockAuthResult();
      //   });
      //   // act
      //   final result = await authFacade.signInWithGoogle();
      //   // assert
      //   verify(mockGoogleSignIn.signIn());
      //   expect(result, equals(const Right(unit)));
      // });
      test(
          'should return left(const AuthFailure.cancelledByUser()) when user is null',
          () async {
        // arrange
        when(mockGoogleSignIn.signIn()).thenAnswer((_) async {
          return null;
        });
        // act
        final result = await authFacade.signInWithGoogle();
        // assert
        expect(result, equals(const Left(AuthFailure.cancelledByUser())));
      });
    });
  });

  group('firebaseAuthRegister', () {
    test(
        'should return unit when email and password are valid and user does not exists',
        () async {
      // arrange
      const emailStr = 'abc@freenet.de';
      email = EmailAddress(emailStr);
      const passwordStr = '123456';
      password = Password(passwordStr);
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: emailStr, password: passwordStr))
          .thenAnswer((_) async {
        return Future<MockAuthResult>.value(MockAuthResult());
      });
      // act
      final result = await authFacade.registerWithEmailAndPassword(
          emailAddress: email, password: password);
      // assert
      verify(mockFirebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr));
      expect(result, right(unit));
    });

    test(
        'should return left(const AuthFailure.emailAlreadyInUse()) when registering throws ERROR_EMAIL_ALREADY_IN_USE FirebaseException',
        () async {
      // arrange
      const emailStr = 'abc@freenet.de';
      email = EmailAddress(emailStr);
      const passwordStr = '123456';
      password = Password(passwordStr);
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: emailStr, password: passwordStr))
          .thenThrow(FirebaseAuthException(
        code: ERROR_EMAIL_ALREADY_IN_USE,
        message: 'If email already in use',
      ));
      // act
      final result = await authFacade.registerWithEmailAndPassword(
          emailAddress: email, password: password);
      // assert
      expect(result, left(const AuthFailure.emailAlreadyInUse()));
    });

    test(
        'should return left(const AuthFailure.serverError()) when registering throws any FirebaseException',
        () async {
      // arrange
      const emailStr = 'abc@freenet.de';
      email = EmailAddress(emailStr);
      const passwordStr = '123456';
      password = Password(passwordStr);
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: emailStr, password: passwordStr))
          .thenAnswer((_) => throw FirebaseAuthException(
              code: 'any', message: 'any other failure'));
      // act
      final result = await authFacade.registerWithEmailAndPassword(
          emailAddress: email, password: password);
      // assert
      expect(result, left(const AuthFailure.serverError()));
    });
  });
}
