import 'package:firebase_ddd_tutorial/domain/shops/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/shops/working_hours.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_working_hours_presentation_classes.freezed.dart';

@freezed
abstract class ShopWorkingHoursPrimitive
    implements _$ShopWorkingHoursPrimitive {
  const ShopWorkingHoursPrimitive._();
  const factory ShopWorkingHoursPrimitive({
    @required num workingHours,
  }) = _ShopWorkingHoursPrimitive;

  factory ShopWorkingHoursPrimitive.empty() => const ShopWorkingHoursPrimitive(
        workingHours: 8,
      );

  factory ShopWorkingHoursPrimitive.fromDomain(
      ShopWorkingHours shopWorkingHours) {
    return ShopWorkingHoursPrimitive(
      workingHours: shopWorkingHours.workingHours.getOrCrash(),
    );
  }
  ShopWorkingHours toDomian() {
    return ShopWorkingHours(
      workingHours: WorkingHours(workingHours),
    );
  }
}
