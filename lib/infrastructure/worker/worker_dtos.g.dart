// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkerDto _$_$_WorkerDtoFromJson(Map<String, dynamic> json) {
  return _$_WorkerDto(
    parentId: json['parentId'] as String,
    name: json['name'] as String,
    firstName: json['firstName'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    imageUrl: json['imageUrl'] as String,
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_WorkerDtoToJson(_$_WorkerDto instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'firstName': instance.firstName,
      'email': instance.email,
      'phone': instance.phone,
      'imageUrl': instance.imageUrl,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };
