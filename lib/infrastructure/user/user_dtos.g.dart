// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    name: json['name'] as String,
    firstName: json['firstName'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    imageUrl: json['imageUrl'] as String,
    city: json['city'] as String,
    zip: json['zip'] as String,
    houseNum: json['houseNum'] as String,
    street: json['street'] as String,
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'firstName': instance.firstName,
      'email': instance.email,
      'phone': instance.phone,
      'imageUrl': instance.imageUrl,
      'city': instance.city,
      'zip': instance.zip,
      'houseNum': instance.houseNum,
      'street': instance.street,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };
