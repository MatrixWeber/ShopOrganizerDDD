// Data transfer objects

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'worker_dtos.freezed.dart';
part 'worker_dtos.g.dart';

@freezed
abstract class WorkerDto implements _$WorkerDto {
  const WorkerDto._();

  const factory WorkerDto({
    @JsonKey(ignore: true) String id,
    @required String parentId,
    @required String name,
    @required String firstName,
    @required String email,
    @required String phone,
    @required String imageUrl,
    //? placeholder --> last updated time on Server
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
  }) = _WorkerDto;

  factory WorkerDto.fromDomain(Worker worker) {
    return WorkerDto(
      id: worker.id.getOrCrash(),
      parentId: worker.parentId.getOrCrash(),
      name: worker.name.getOrCrash(),
      firstName: worker.firstName.getOrCrash(),
      email: worker.email.getOrCrash(),
      phone: worker.phoneNumber.getOrCrash(),
      imageUrl: worker.imageUrl.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Worker toDomian() {
    return Worker(
      id: UniqueId.fromUniqueString(id),
      parentId: UniqueId.fromUniqueString(parentId),
      name: Name(name),
      email: EmailAddress(email),
      imageUrl: ImageUrl(imageUrl),
      firstName: FirstName(firstName),
      phoneNumber: PhoneNumber(phone),
    );
  }

  factory WorkerDto.fromFirestore(DocumentSnapshot doc) {
    return WorkerDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

  factory WorkerDto.fromJson(Map<String, dynamic> json) =>
      _$WorkerDtoFromJson(json);
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
