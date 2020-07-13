import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_failure.freezed.dart';

@freezed
abstract class ShopFailure with _$ShopFailure {
  const factory ShopFailure.unexpected() = _Unexpected;
  const factory ShopFailure.unableToUpdate() = _UnableToUpdate;
  const factory ShopFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
