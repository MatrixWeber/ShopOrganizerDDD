import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'shop.dart';
import 'shop_failure.dart';

abstract class IShopRepository {
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll();
  Future<Either<ShopFailure, Unit>> create(Shop shop);
  Future<Either<ShopFailure, Unit>> update(Shop shop);
  Future<Either<ShopFailure, Unit>> delete(Shop shop);
}
