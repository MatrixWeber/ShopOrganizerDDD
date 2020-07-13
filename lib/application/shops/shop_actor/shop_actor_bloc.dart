import 'package:firebase_ddd_tutorial/domain/shops/i_shop_repository.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'shop_actor_event.dart';
part 'shop_actor_state.dart';
part 'shop_actor_bloc.freezed.dart';

@injectable
class ShopActorBloc extends Bloc<ShopActorEvent, ShopActorState> {
  final IShopRepository _shopRepository;

  ShopActorBloc(this._shopRepository);
  @override
  ShopActorState get initialState => const ShopActorState.initial();

  @override
  Stream<ShopActorState> mapEventToState(
    ShopActorEvent event,
  ) async* {
    yield const ShopActorState.actionInProgress();
    final possibleFailure = await _shopRepository.delete(event.shop);
    yield possibleFailure.fold(
      (f) => ShopActorState.deleteFailure(f),
      (_) => const ShopActorState.deleteSuccess(),
    );
  }
}
