import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateIsALetter(String input) {
  const emailRegex = '^[a-zA-Z]';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.isNotALetter(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<Duration>, Duration> validateMaxDuration(
    Duration input, Duration maxDuration) {
  if (input <= maxDuration) {
    return right(input);
  } else {
    return left(ValueFailure.durationToLong(
        failedValue: input, maxDuration: maxDuration));
  }
}

Either<ValueFailure<Duration>, Duration> validateDurationNotNull(
    Duration input) {
  if (input != const Duration()) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<num>, num> validateMaxNum(num input, num max) {
  if (input <= max) {
    return right(input);
  } else {
    return left(ValueFailure.maxTypeExceeded(failedValue: input, max: max));
  }
}

Either<ValueFailure<num>, num> validateNumNotNull(num input) {
  if (input != 0) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateIsNotANumber(String input) {
  final tryParseInt = int.tryParse(input);
  if (input[0].contains('+') || input[0].contains('0') || tryParseInt != null) {
    return right(input);
  } else {
    return left(ValueFailure.isNotAPhoneNumber(failedValue: input));
  }
}
