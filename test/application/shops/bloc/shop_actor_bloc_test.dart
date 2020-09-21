import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_actor/shop_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/shops/i_shop_repository.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop_failure.dart';
import 'package:firebase_ddd_tutorial/infrastructure/shops/shop_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFirestore extends Mock implements Firestore {}

class MockShopRepository extends Mock implements ShopRepository {
  final MockFirestore _mockFirestore;
  MockShopRepository(this._mockFirestore);
}

void main() {
  ShopActorBloc bloc;
  IShopRepository _shopRepository;
  MockFirestore _mockFirestore;
  setUp(() {
    _mockFirestore = MockFirestore();
    _shopRepository = MockShopRepository(_mockFirestore);
    bloc = ShopActorBloc(_shopRepository);
  });

  test('initial state should be Initial', () {
    // assert
    expect(bloc.state, equals(const ShopActorState.initial()));
  });

  test(
      'should emit state initial, actionInProgress and deleteSuccess when mocking the delete function to return right(unit) and adding the deleted() event to the bloc',
      () async {
    //? arrange
    final shop = Shop.empty();
    when(_shopRepository.delete(shop)).thenAnswer((_) async {
      return const Right(unit);
    });

    final expected = [
      const ShopActorState.initial(),
      const ShopActorState.actionInProgress(),
      const ShopActorState.deleteSuccess(),
    ];
    expectLater(bloc, emitsInOrder(expected));
    //? act
    bloc.add(ShopActorEvent.deleted(shop));
    await untilCalled(_shopRepository.delete(shop));
    //? assert
    verify(_shopRepository.delete(shop));
  });
  test(
      'should emit state initial, actionInProgress and deleteFailure when mocking the delete function to return right(unit) and adding the deleted() event to the bloc',
      () async {
    //? arrange
    const shopFailure = ShopFailure.unexpected();
    final shop = Shop.empty();
    when(_shopRepository.delete(shop)).thenAnswer((_) async {
      return const Left(shopFailure);
    });

    final expected = [
      const ShopActorState.initial(),
      const ShopActorState.actionInProgress(),
      const ShopActorState.deleteFailure(shopFailure),
    ];
    expectLater(bloc, emitsInOrder(expected));
    //? act
    bloc.add(ShopActorEvent.deleted(shop));
    await untilCalled(_shopRepository.delete(shop));
    //? assert
    verify(_shopRepository.delete(shop));
  });
}
