import 'package:firebase_ddd_tutorial/domain/auth/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('authValueObjects', () {
    group('emailValidation', () {
      test('should return string when email is valid', () {
        // arrange
        const emailStr = 'abc@freenet.de';
        final email = EmailAddress(emailStr);
        // assert
        expect(email.getOrCrash(), emailStr);
      });
      test(
          'should throw UnexpectedValueError() when email does not have an @ sign',
          () {
        // arrange
        const emailStr = 'abcfreenet.de';
        final email = EmailAddress(emailStr);

        final call = email.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });

      test(
          'should throw UnexpectedValueError() when email does not have a . after the @ sign',
          () {
        // arrange
        const emailStr = 'abc@freenetde';
        final email = EmailAddress(emailStr);

        final call = email.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
      test(
          'should throw UnexpectedValueError() when email does not have any char before the @ sign',
          () {
        // arrange
        const emailStr = '@freenet.de';
        final email = EmailAddress(emailStr);

        final call = email.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
      test(
          'should throw UnexpectedValueError() when email does not have any char after the @ and before the . sign',
          () {
        // arrange
        const emailStr = 'abc@.de';
        final email = EmailAddress(emailStr);

        final call = email.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });

    group('passwordValidation', () {
      test('should return string when password is valid', () {
        // arrange
        const passwordStr = '123456';
        final password = Password(passwordStr);
        // assert
        expect(password.getOrCrash(), passwordStr);
      });

      test(
          'should throw UnexpectedValueError() when password has less than six chars',
          () {
        // arrange
        const passwordStr = 'abc@.';
        final password = Password(passwordStr);

        final call = password.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
  });
}
