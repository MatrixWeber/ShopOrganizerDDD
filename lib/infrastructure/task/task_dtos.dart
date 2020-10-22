// Data transfer objects

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_dtos.freezed.dart';
part 'task_dtos.g.dart';

@freezed
abstract class TaskDto implements _$TaskDto {
  const TaskDto._();

  const factory TaskDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required Duration duration,
    @required num price,
    //? placeholder --> last updated time on Server
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
  }) = _TaskDto;

  factory TaskDto.fromDomain(TaskDescription task) {
    return TaskDto(
      id: task.id.getOrCrash(),
      name: task.name.getOrCrash(),
      duration: task.duration.getOrCrash(),
      price: task.price.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  TaskDescription toDomian() {
    return TaskDescription(
        id: UniqueId.fromUniqueString(id),
        name: TaskName(name),
        duration: TaskDuration(duration),
        price: Price(price));
  }

  factory TaskDto.fromFirestore(DocumentSnapshot doc) {
    return TaskDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);
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
