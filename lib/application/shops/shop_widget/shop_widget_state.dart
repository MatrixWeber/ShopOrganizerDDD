part of 'shop_widget_bloc.dart';

@freezed
abstract class ShopWidgetState with _$ShopWidgetState {
  const factory ShopWidgetState.initial() = _Initial;
  const factory ShopWidgetState.actionInProgress(num percent) =
      _ActionInProgress;
}
