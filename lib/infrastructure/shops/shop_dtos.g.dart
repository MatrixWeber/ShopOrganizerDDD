// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopDto _$_$_ShopDtoFromJson(Map<String, dynamic> json) {
  return _$_ShopDto(
    name: json['name'] as String,
    keeper: json['keeper'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    imageUrl: json['imageUrl'] as String,
    category: json['category'] as String,
    city: json['city'] as String,
    zip: json['zip'] as String,
    houseNum: json['houseNum'] as String,
    street: json['street'] as String,
    numberOfWorkers: json['numberOfWorkers'] as num,
    openingDays: (json['openingDays'] as List)?.map((e) => e as bool)?.toList(),
    shopWorkingHours: (json['shopWorkingHours'] as List)
        ?.map((e) => e == null
            ? null
            : WorkingHoursDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ShopDtoToJson(_$_ShopDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'keeper': instance.keeper,
      'email': instance.email,
      'phone': instance.phone,
      'imageUrl': instance.imageUrl,
      'category': instance.category,
      'city': instance.city,
      'zip': instance.zip,
      'houseNum': instance.houseNum,
      'street': instance.street,
      'numberOfWorkers': instance.numberOfWorkers,
      'openingDays': instance.openingDays,
      'shopWorkingHours': instance.shopWorkingHours,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };

_$_WorkingHoursDto _$_$_WorkingHoursDtoFromJson(Map<String, dynamic> json) {
  return _$_WorkingHoursDto(
    workingHours: json['workingHours'] as num,
  );
}

Map<String, dynamic> _$_$_WorkingHoursDtoToJson(_$_WorkingHoursDto instance) =>
    <String, dynamic>{
      'workingHours': instance.workingHours,
    };
