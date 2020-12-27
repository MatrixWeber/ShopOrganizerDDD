import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/infrastructure/shops/shop_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFirestore extends Mock implements FirebaseFirestore {}

class MockShopRepository extends Mock implements ShopRepository {
  final MockFirestore _mockFirestore;
  MockShopRepository(this._mockFirestore);
}

void main() {
  ShopFormBloc bloc;
  MockShopRepository _shopRepository;
  MockFirestore _mockFirestore;
  setUp(() {
    _mockFirestore = MockFirestore();
    _shopRepository = MockShopRepository(_mockFirestore);
    bloc = ShopFormBloc(_shopRepository);
  });
  test('should call the create() on repo', () async {
    // arrange
    // final shop = shop.empty();
    bloc.add(const ShopFormEvent.imageUrlChanged('euter'));
    when(_shopRepository.create(any)).thenAnswer((_) async {
      return Future.value(const Right(unit));
    });
    // act
    bloc.add(const ShopFormEvent.saved());
    await untilCalled(_shopRepository.create(any));
    // assert
    verify(_shopRepository.create(any));
  });
  test('should call the update() on repo', () async {
    // arrange
    final shop = Shop.test();
    bloc.add(ShopFormEvent.initialized(some(shop)));
    bloc.add(const ShopFormEvent.imageUrlChanged('euter'));
    when(_shopRepository.update(any)).thenAnswer((_) async {
      return Future.value(const Right(unit));
    });
    // act
    bloc.add(const ShopFormEvent.saved());
    await untilCalled(_shopRepository.update(any));
    // assert
    verify(_shopRepository.update(any));
  });
}
