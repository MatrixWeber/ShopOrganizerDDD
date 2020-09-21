import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/shops/i_shop_repository.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'shop_watcher_event.dart';
part 'shop_watcher_state.dart';
part 'shop_watcher_bloc.freezed.dart';

@injectable
class ShopWatcherBloc extends Bloc<ShopWatcherEvent, ShopWatcherState> {
  final IShopRepository _shopRepository;

  ShopWatcherBloc(this._shopRepository)
      : super(const ShopWatcherState.initial());
  StreamSubscription<Either<ShopFailure, KtList<Shop>>> _shopStreamSubscription;

  @override
  Stream<ShopWatcherState> mapEventToState(
    ShopWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const ShopWatcherState.loadInProgress();
      await _shopStreamSubscription?.cancel();
      _shopStreamSubscription = _shopRepository.watchAll().listen(
          (failureOrShops) =>
              add(ShopWatcherEvent.shopsReceived(failureOrShops)));
    }, shopsReceived: (e) async* {
      yield e.failureOrShops.fold((f) => ShopWatcherState.loadFailure(f),
          (shops) => ShopWatcherState.loadSuccess(shops));
    });
  }

  @override
  Future<void> close() async {
    await _shopStreamSubscription?.cancel();
    return super.close();
  }
}
