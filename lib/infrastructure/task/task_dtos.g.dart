// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDto _$_$_TaskDtoFromJson(Map<String, dynamic> json) {
  return _$_TaskDto(
    name: json['name'] as String,
    duration: json['duration'] == null
        ? null
        : Duration(microseconds: json['duration'] as int),
    price: json['price'] as num,
    serverTimeStamp:
        const ServerTimeStampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_TaskDtoToJson(_$_TaskDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'duration': instance.duration?.inMicroseconds,
      'price': instance.price,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };
