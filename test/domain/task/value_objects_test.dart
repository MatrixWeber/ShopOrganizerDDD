import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('taskValueObjects', () {
    group('taskNameValidation', () {
      test('should return string when task name is valid', () {
        // arrange
        const taskNameStr =
            '0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789';
        final taskName = TaskName(taskNameStr);
        // assert
        expect(taskName.getOrCrash(), taskNameStr);
      });
      test(
          'should throw UnexpectedValueError() when task name has a length over 100',
          () {
        // arrange
        const taskNameStr =
            '01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567891';
        final taskName = TaskName(taskNameStr);

        final call = taskName.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });

    group('taskDurationValidation', () {
      test('should return duration when task duration is valid', () {
        // arrange
        const taskDurationValid = Duration(hours: 1);
        final taskDuration = TaskDuration(taskDurationValid);
        // assert
        expect(taskDuration.getOrCrash(), taskDurationValid);
      });
      test('should throw UnexpectedValueError() when task duration is 0', () {
        // arrange
        const taskDurationEmpty = Duration();
        final taskDuration = TaskDuration(taskDurationEmpty);
        final call = taskDuration.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
      test(
          'should throw UnexpectedValueError() when task duration exceeds the max of 8',
          () {
        // arrange
        const taskDurationEmpty = Duration(hours: 9);
        final taskDuration = TaskDuration(taskDurationEmpty);

        final call = taskDuration.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('taskPriceValidation', () {
      test('should return double when task price is valid', () {
        // arrange
        const priceIsExactMax = 1000000.0;
        final price = Price(priceIsExactMax);
        // assert
        expect(price.getOrCrash(), priceIsExactMax);
      });
      test('should throw UnexpectedValueError() when task Price is 0', () {
        // arrange
        const priceIsNull = 0.0;
        final price = Price(priceIsNull);

        final call = price.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
      test(
          'should throw UnexpectedValueError() when task Price exceeds the max',
          () {
        // arrange
        const priceIsOverMax = 1000000.01;
        final price = Price(priceIsOverMax);

        final call = price.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
  });
}
