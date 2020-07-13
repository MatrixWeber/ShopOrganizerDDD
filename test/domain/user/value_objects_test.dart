import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/user/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('userNameValueObjects', () {
    group('userNameValidation', () {
      test('should return Name when Name is valid', () {
        // arrange
        const userNameStr =
            '01234567890123456789012345678901234567890123456789';
        final userName = Name(userNameStr);
        // assert
        expect(userName.getOrCrash(), userNameStr);
      });
      test(
          'should throw UnexpectedValueError() when Name has a length over limit',
          () {
        // arrange
        const userNameStr =
            '0123456789012345678901234567890123456789012345678901';
        final userName = Name(userNameStr);

        final call = userName.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });

    group('userFirstNameValidation', () {
      test('should return userFirstName when users userFirstName is valid', () {
        // arrange
        const userFirstNameStr =
            '01234567890123456789012345678901234567890123456789';
        final userFirstNameValid = FirstName(userFirstNameStr);
        // assert
        expect(userFirstNameValid.getOrCrash(), userFirstNameStr);
      });
      test(
          'should throw UnexpectedValueError() when users userFirstName is invalid',
          () {
        // arrange
        const userFirstNameStr =
            '101234567890123456789012345678901234567890123456789';
        final userFirstNameValid = FirstName(userFirstNameStr);
        final call = userFirstNameValid.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
  });
}
