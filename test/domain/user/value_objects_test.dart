import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('userNameValueObjects', () {
    group('userNameValidation', () {
      test('should return Name when Name is valid', () {
        // arrange
        const userNameStr =
            'abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij';
        final userName = Name(userNameStr);
        // assert
        expect(userName.getOrCrash(), userNameStr);
      });
      test(
          'should throw UnexpectedValueError() when Name has a length over limit',
          () {
        // arrange
        const userNameStr =
            'abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijkk';
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
            'abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij';
        final userFirstNameValid = FirstName(userFirstNameStr);
        // assert
        expect(userFirstNameValid.getOrCrash(), userFirstNameStr);
      });
      test(
          'should throw UnexpectedValueError() when users userFirstName is invalid',
          () {
        // arrange
        const userFirstNameStr =
            'kabcdefghijabcdefghijabcdefghijabcdefghijabcdefghij';
        final userFirstNameValid = FirstName(userFirstNameStr);
        final call = userFirstNameValid.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
  });
}
