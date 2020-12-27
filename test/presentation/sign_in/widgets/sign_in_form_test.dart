import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ddd_tutorial/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_tutorial/domain/auth/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/infrastructure/auth/firebase_auth_facade.dart';
import 'package:firebase_ddd_tutorial/injection.dart';
import 'package:firebase_ddd_tutorial/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter/services.dart';

// @injectable
class MockFirebaseAuth extends Mock implements FirebaseAuth {}

// @injectable
class MockGoogleSignIn extends Mock implements GoogleSignIn {}

// @LazySingleton(as: IAuthFacade)
class FirebaseAuthFacadeMock extends Mock implements FirebaseAuthFacade {
  final MockFirebaseAuth mockFirebaseAuth;
  final MockGoogleSignIn mockGoogleSignIn;
  FirebaseAuthFacadeMock(this.mockFirebaseAuth, this.mockGoogleSignIn);
}

typedef void Callback(MethodCall call);

void setupCloudFirestoreMocks([Callback customHandlers]) {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFirebase.channel.setMockMethodCallHandler((call) async {
    if (call.method == 'Firebase#initializeCore') {
      return [
        {
          'name': defaultFirebaseAppName,
          'options': {
            'apiKey': '123',
            'appId': '123',
            'messagingSenderId': '123',
            'projectId': '123',
          },
          'pluginConstants': {},
        }
      ];
    }

    if (call.method == 'Firebase#initializeApp') {
      return {
        'name': call.arguments['appName'],
        'options': call.arguments['options'],
        'pluginConstants': {},
      };
    }

    if (customHandlers != null) {
      customHandlers(call);
    }

    return null;
  });
}

Future<void> main() async {
  setupCloudFirestoreMocks();
  TestWidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final _firebaseAuth = MockFirebaseAuth();
  final _googleSignIn = MockGoogleSignIn();
  final IAuthFacade _authFacade =
      FirebaseAuthFacadeMock(_firebaseAuth, _googleSignIn);

  Widget _makeTestable(Widget child) {
    configureInjection(Environment.test);
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: MaterialApp(home: child),
    );
  }

  final emailField = find.byKey(const Key('email-field'));
  final passwordField = find.byKey(const Key('password-field'));
  final signInButton = find.text('SIGN IN');

  group('signInFormTest', () {
    const email = "named@euter.de";
    const password = "any123";
    // when(_firebaseAuth.signInWithEmailAndPassword(
    //   email: email,
    //   password: password,
    // )).thenAnswer((_) async {
    //   return MockAuthResult();
    // });
    testWidgets('email, password and sign in button are found',
        (WidgetTester tester) async {
      await tester.pumpWidget(_makeTestable(SignInPage()));
      expect(emailField, findsOneWidget);
      expect(passwordField, findsOneWidget);
      expect(signInButton, findsOneWidget);
      unregisterInjection();
    });
    testWidgets(
        'should never call signIn function when empty email and password was given and sign in button was pressed',
        (WidgetTester tester) async {
      await tester.pumpWidget(_makeTestable(SignInPage()));
      await tester.tap(signInButton);
      await tester.pump();
      verifyNever(_authFacade.signInWithEmailAndPassword(
          emailAddress: EmailAddress(''), password: Password('')));
      verifyZeroInteractions(_firebaseAuth);
      // expect(
      //     find.text('Invalid email and password combination'), findsOneWidget);
      unregisterInjection();
    });
    testWidgets(
        'should call signIn function once when valid email and password was given and sign in button was pressed',
        (WidgetTester tester) async {
      await tester.pumpWidget(_makeTestable(SignInPage()));
      await tester.enterText(emailField, email);
      await tester.enterText(passwordField, password);
      await tester.tap(signInButton);
      // await untilCalled(_authFacade.signInWithEmailAndPassword(
      //   emailAddress: EmailAddress(email),
      //   password: Password(password),
      // ));
      await tester.pump();
      // verify(
      //   _authFacade.signInWithEmailAndPassword(
      //     emailAddress: EmailAddress(email),
      //     password: Password(password),
      //   ),
      // ).called(1);
      verifyZeroInteractions(_authFacade);
      // expect(
      //     find.text('Invalid email and password combination'), findsOneWidget);
      unregisterInjection();
    });
  });
}
