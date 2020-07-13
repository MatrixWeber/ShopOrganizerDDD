// Data transfer objects

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ddd_tutorial/domain/address/address.dart';
import 'package:firebase_ddd_tutorial/domain/address/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/user/user.dart';
import 'package:firebase_ddd_tutorial/domain/user/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String firstName,
    @required String email,
    @required String phone,
    @required String imageUrl,
    @required String city,
    @required String zip,
    @required String houseNum,
    @required String street,
    //? placeholder --> last updated time on Server
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      name: user.name.getOrCrash(),
      firstName: user.firstName.getOrCrash(),
      email: user.email.getOrCrash(),
      phone: user.phoneNumber.getOrCrash(),
      imageUrl: user.imageUrl.getOrCrash(),
      city: user.address.city.getOrCrash(),
      street: user.address.street.getOrCrash(),
      zip: user.address.zip.getOrCrash(),
      houseNum: user.address.houseNumber.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  User toDomian() {
    return User(
      id: UniqueId.fromUniqueString(id),
      name: Name(name),
      email: EmailAddress(email),
      imageUrl: ImageUrl(imageUrl),
      firstName: FirstName(firstName),
      phoneNumber: PhoneNumber(phone),
      address: Address(
        city: City(city),
        street: Street(street),
        zip: Zip(zip),
        houseNumber: HouseNumber(houseNum),
      ),
    );
  }

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
