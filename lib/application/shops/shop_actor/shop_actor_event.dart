part of 'shop_actor_bloc.dart';

@freezed
abstract class ShopActorEvent with _$ShopActorEvent {
  const factory ShopActorEvent.deleted(Shop shop) = _Deleted;
}
