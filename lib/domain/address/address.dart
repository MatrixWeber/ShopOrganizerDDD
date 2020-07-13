import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/address/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
// in order to have methods on a freezed class
// we need to change the with to implements
// and provide a private Constructor
abstract class Address implements _$Address {
  const Address._();

  const factory Address({
    @required Street street,
    @required HouseNumber houseNumber,
    @required Zip zip,
    @required City city,
  }) = _Address;

  factory Address.empty() => Address(
        street: Street(''),
        houseNumber: HouseNumber(''),
        zip: Zip(''),
        city: City(''),
      );
  factory Address.test() => Address(
        street: Street('a'),
        houseNumber: HouseNumber('b'),
        zip: Zip('c'),
        city: City('d'),
      );

  // if everything is valid we are returning none() => no failure
  Option<ValueFailure<dynamic>> get failureOption {
    return street.failureOrUnit
        .andThen(zip.failureOrUnit)
        .andThen(city.failureOrUnit)
        .andThen(houseNumber.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
