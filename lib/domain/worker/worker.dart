import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'worker.freezed.dart';

@freezed
abstract class Worker implements _$Worker {
  const Worker._();

  const factory Worker({
    @required UniqueId id,
    @required Name name,
    @required FirstName firstName,
    @required EmailAddress email,
    @required PhoneNumber phoneNumber,
    @required ImageUrl imageUrl,
  }) = _Worker;

  factory Worker.empty() => Worker(
        id: UniqueId(),
        name: Name(''),
        firstName: FirstName(''),
        email: EmailAddress(''),
        phoneNumber: PhoneNumber(''),
        imageUrl: ImageUrl(''),
      );
  factory Worker.test() => Worker(
        id: UniqueId(),
        name: Name('a'),
        firstName: FirstName('b'),
        email: EmailAddress('cab@bla.de'),
        phoneNumber: PhoneNumber('d'),
        imageUrl: ImageUrl('e'),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    // like flatMap andThen checks as well if first
    // fails the others wan't be evaluated
    return name.failureOrUnit
        .andThen(firstName.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(imageUrl.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
