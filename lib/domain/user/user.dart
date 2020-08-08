import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/address/address.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  const factory User({
    @required UniqueId id,
    @required Name name,
    @required FirstName firstName,
    @required EmailAddress email,
    @required PhoneNumber phoneNumber,
    @required ImageUrl imageUrl,
    @required Address address,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        name: Name(''),
        firstName: FirstName(''),
        email: EmailAddress(''),
        phoneNumber: PhoneNumber(''),
        imageUrl: ImageUrl(''),
        address: Address.empty(),
      );
  factory User.test() => User(
        id: UniqueId(),
        name: Name('a'),
        firstName: FirstName('b'),
        email: EmailAddress('cab@bla.de'),
        phoneNumber: PhoneNumber('867'),
        imageUrl: ImageUrl('e'),
        address: Address.test(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    // like flatMap andThen checks as well if first
    // fails the others wan't be evaluated
    return name.failureOrUnit
        .andThen(firstName.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(imageUrl.failureOrUnit)
        .andThen(address.city.failureOrUnit)
        .andThen(address.houseNumber.failureOrUnit)
        .andThen(address.zip.failureOrUnit)
        .andThen(address.street.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
