// Data transfer objects

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ddd_tutorial/domain/address/address.dart';
import 'package:firebase_ddd_tutorial/domain/address/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/auth/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/domain/shops/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/shops/working_hours.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'shop_dtos.freezed.dart';
part 'shop_dtos.g.dart';

@freezed
abstract class ShopDto implements _$ShopDto {
  const ShopDto._();

  const factory ShopDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String keeper,
    @required String email,
    @required String phone,
    @required String imageUrl,
    @required String category,
    @required String city,
    @required String zip,
    @required String houseNum,
    @required String street,
    @required num numberOfWorkers,
    @required List<bool> openingDays,
    @required List<WorkingHoursDto> shopWorkingHours,
    //? placeholder --> last updated time on Server
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
  }) = _ShopDto;

  factory ShopDto.fromDomain(Shop shop) {
    return ShopDto(
      id: shop.id.getOrCrash(),
      name: shop.name.getOrCrash(),
      keeper: shop.keeper.getOrCrash(),
      email: shop.email.getOrCrash(),
      phone: shop.phoneNumber.getOrCrash(),
      imageUrl: shop.imageUrl.getOrCrash(),
      category: shop.category.getOrCrash(),
      city: shop.address.city.getOrCrash(),
      street: shop.address.street.getOrCrash(),
      zip: shop.address.zip.getOrCrash(),
      houseNum: shop.address.houseNumber.getOrCrash(),
      numberOfWorkers: shop.numberOfWorkers.getOrCrash(),
      openingDays: shop.openingDays.getOrCrash().asList(),
      shopWorkingHours: shop.workingHours
          .getOrCrash()
          .map((shopWorkingHours) =>
              WorkingHoursDto.fromDomain(shopWorkingHours))
          .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Shop toDomian() {
    return Shop(
        id: UniqueId.fromUniqueString(id),
        name: ShopName(name),
        address: Address(
          city: City(city),
          street: Street(street),
          zip: Zip(zip),
          houseNumber: HouseNumber(houseNum),
        ),
        category: ShopCategory(category),
        email: EmailAddress(email),
        imageUrl: ImageUrl(imageUrl),
        keeper: ShopKeeper(keeper),
        numberOfWorkers: NumberOfWorkers(numberOfWorkers),
        openingDays: WeekList<bool>(KtList<bool>.from(openingDays)),
        phoneNumber: PhoneNumber(phone),
        workingHours: WeekList(
            shopWorkingHours.map((dto) => dto.toDomian()).toImmutableList()));
  }

  factory ShopDto.fromFirestore(DocumentSnapshot doc) {
    return ShopDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }

  factory ShopDto.fromJson(Map<String, dynamic> json) =>
      _$ShopDtoFromJson(json);
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

@freezed
abstract class WorkingHoursDto implements _$WorkingHoursDto {
  const WorkingHoursDto._();

  const factory WorkingHoursDto({
    @required num workingHours,
  }) = _WorkingHoursDto;

  factory WorkingHoursDto.fromDomain(ShopWorkingHours workingHours) {
    return WorkingHoursDto(
      workingHours: workingHours.workingHours.getOrCrash(),
    );
  }
  ShopWorkingHours toDomian() {
    return ShopWorkingHours(workingHours: WorkingHours(workingHours));
  }

  factory WorkingHoursDto.fromJson(Map<String, dynamic> json) =>
      _$WorkingHoursDtoFromJson(json);
}
