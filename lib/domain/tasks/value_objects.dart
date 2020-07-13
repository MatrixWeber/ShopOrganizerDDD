import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_validators.dart';

class TaskName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 100;

  factory TaskName(String input) {
    assert(input != null);
    return TaskName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const TaskName._(this.value);
}

class TaskDuration extends ValueObject<Duration> {
  @override
  final Either<ValueFailure<Duration>, Duration> value;
  static const Duration maxDuration = Duration(hours: 8);

  factory TaskDuration(Duration input) {
    assert(input != null);
    return TaskDuration._(
      validateMaxDuration(input, maxDuration).flatMap(validateDurationNotNull),
    );
  }

  const TaskDuration._(this.value);
}

class Price extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;
  static const maxPrice = 1000000.0;

  factory Price(num input) {
    assert(input != null);
    return Price._(
      validateMaxNum(input, maxPrice).flatMap(validateNumNotNull),
    );
  }

  const Price._(this.value);
}
