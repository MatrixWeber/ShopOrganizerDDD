import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/shops/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_hours.freezed.dart';

@freezed
// in order to have methods on a freezed class
// we need to change the with to implements
// and provide a private Constructor
abstract class ShopWorkingHours implements _$ShopWorkingHours {
  const ShopWorkingHours._();

  const factory ShopWorkingHours({@required WorkingHours workingHours}) =
      _ShopWorkingHours;

  factory ShopWorkingHours.empty() => ShopWorkingHours(
        workingHours: WorkingHours(8),
      );

  // if everything is valid we are returning none() => no failure
  Option<ValueFailure<dynamic>> get failureOption {
    return workingHours.value.fold((f) => some(f), (_) => none());
  }
}
