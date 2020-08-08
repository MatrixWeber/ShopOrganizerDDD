import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.durationToLong({
    @required T failedValue,
    @required Duration maxDuration,
  }) = DurationToLong<T>;
  const factory ValueFailure.maxTypeExceeded({
    @required T failedValue,
    @required T max,
  }) = MaxTypeExceeded<T>;
  const factory ValueFailure.isNotAPhoneNumber({
    @required T failedValue,
  }) = IsNotAPhoneNumber<T>;
  const factory ValueFailure.isNotALetter({
    @required T failedValue,
  }) = IsNotALetter<T>;
}
