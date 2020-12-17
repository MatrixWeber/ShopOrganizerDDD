part of 'shop_widget_bloc.dart';

@freezed
abstract class ShopWidgetEvent with _$ShopWidgetEvent {
  const factory ShopWidgetEvent.initialized() = _Initialized;
  const factory ShopWidgetEvent.inProgress(num percent) = _InProgress;
}
