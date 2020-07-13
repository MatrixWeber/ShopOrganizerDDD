part of 'shop_watcher_bloc.dart';

@freezed
abstract class ShopWatcherState with _$ShopWatcherState {
  const factory ShopWatcherState.initial() = _Initial;
  const factory ShopWatcherState.loadInProgress() = _LoadInProgress;
  const factory ShopWatcherState.loadSuccess(KtList<Shop> shops) = _LoadSuccess;
  const factory ShopWatcherState.loadFailure(ShopFailure shopFailure) =
      _LoadFailure;
}
