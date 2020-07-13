part of 'shop_watcher_bloc.dart';

@freezed
abstract class ShopWatcherEvent with _$ShopWatcherEvent {
  const factory ShopWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ShopWatcherEvent.shopsReceived(
      Either<ShopFailure, KtList<Shop>> failureOrShops) = _ShopsReceived;
}
