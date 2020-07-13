part of 'shop_actor_bloc.dart';

@freezed
abstract class ShopActorState with _$ShopActorState {
  const factory ShopActorState.initial() = _Initial;
  const factory ShopActorState.actionInProgress() = _ActionInProgress;
  const factory ShopActorState.deleteSuccess() = _DeleteSuccess;
  const factory ShopActorState.deleteFailure(ShopFailure shopFailure) =
      _DeleteFailure;
}
