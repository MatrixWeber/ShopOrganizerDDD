import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_validators.dart';
import 'package:kt_dart/kt.dart';

class ShopName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 200;

  factory ShopName(String input) {
    assert(input != null);
    return ShopName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateIsALetter),
    );
  }

  const ShopName._(this.value);
}

class ShopKeeper extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 50;

  factory ShopKeeper(String input) {
    assert(input != null);
    return ShopKeeper._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateIsALetter),
    );
  }

  const ShopKeeper._(this.value);
}

class ShopCategory extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 50;

  factory ShopCategory(String input) {
    assert(input != null);
    return ShopCategory._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const ShopCategory._(this.value);
}

class NumberOfWorkers extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;
  static const maxLength = 30;

  factory NumberOfWorkers(num input) {
    assert(input != null);
    return NumberOfWorkers._(
      validateMaxNum(input, maxLength).flatMap(validateNumNotNull),
    );
  }

  const NumberOfWorkers._(this.value);
}

class WorkingHours extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;
  static const maxLength = 24;

  factory WorkingHours(num input) {
    assert(input != null);
    return WorkingHours._(
      validateMaxNum(input, maxLength).flatMap(validateNumNotNull),
    );
  }

  const WorkingHours._(this.value);
}

class WeekList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 7;

  factory WeekList(KtList<T> input) {
    assert(input != null);
    return WeekList._(
      validateMaxListLength(input, maxLength),
    );
  }

  const WeekList._(this.value);

  int get length {
    // get or else will be called if there is a failure
    // e.g. emptyList.size will be called directly
    // else the value.size will be called directly
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
