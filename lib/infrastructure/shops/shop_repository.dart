import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/shops/i_shop_repository.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/infrastructure/shops/shop_dtos.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop_failure.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IShopRepository)
class ShopRepository implements IShopRepository {
  final Firestore _firestore;

  ShopRepository(this._firestore);

  @override
  Stream<Either<ShopFailure, KtList<Shop>>> watchAll() async* {
    // ? user/{user ID}/shops/{shop ID}
    final userDoc = await _firestore.userDocument();
    yield* userDoc.shopCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<ShopFailure, KtList<Shop>>(
            snapshot.documents
                .map((doc) => ShopDto.fromFirestore(doc).toDomian())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return _checkIfPlatformExceptionAndHandleInsufficientPermissionAndUnexpected(
          e);
    });
  }

  Either<ShopFailure, KtList<Shop>>
      _checkIfPlatformExceptionAndHandleInsufficientPermissionAndUnexpected(e) {
    if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
      return left(const ShopFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const ShopFailure.unexpected());
    }
  }

  @override
  Future<Either<ShopFailure, Unit>> create(Shop shop) async {
    try {
      final userDoc = await _firestore.userDocument();
      final shopDto = ShopDto.fromDomain(shop);

      await userDoc.shopCollection
          .document(shopDto.id)
          .setData(shopDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handleInsufficientPermissionAndUnexpectedPlatformException(e);
    }
  }

  Either<ShopFailure, Unit>
      _handleInsufficientPermissionAndUnexpectedPlatformException(
          PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const ShopFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const ShopFailure.unexpected());
    }
  }

  @override
  Future<Either<ShopFailure, Unit>> update(Shop shop) async {
    try {
      final userDoc = await _firestore.userDocument();
      final shopDto = ShopDto.fromDomain(shop);

      await userDoc.shopCollection
          .document(shopDto.id)
          .updateData(shopDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  @override
  Future<Either<ShopFailure, Unit>> delete(Shop shop) async {
    try {
      final userDoc = await _firestore.userDocument();
      final shopId = shop.id.getOrCrash();

      await userDoc.shopCollection.document(shopId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  Either<ShopFailure, Unit> _handlePlatformExceptions(PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const ShopFailure.insufficientPermissions());
    } else if (e.message.contains('NOT_FOUND')) {
      // TODO log.error(e.toString);
      return left(const ShopFailure.unableToUpdate());
    } else {
      // TODO log.error(e.toString);
      return left(const ShopFailure.unexpected());
    }
  }
}
