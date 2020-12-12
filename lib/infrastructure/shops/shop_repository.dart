import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/shops/i_shop_repository.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/infrastructure/shops/shop_dtos.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IShopRepository)
class ShopRepository implements IShopRepository {
  final FirebaseFirestore _firestore;

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
            snapshot.docs
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
    if (e is FirebaseException && e.message.contains('permission-denied')) {
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

      await userDoc.shopCollection.doc(shopDto.id).set(shopDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return _handleInsufficientPermissionAndUnexpectedPlatformException(e);
    }
  }

  Either<ShopFailure, Unit>
      _handleInsufficientPermissionAndUnexpectedPlatformException(
          FirebaseException e) {
    if (e.message.contains('permission-denied')) {
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

      await userDoc.shopCollection.doc(shopDto.id).update(shopDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  @override
  Future<Either<ShopFailure, Unit>> delete(Shop shop) async {
    try {
      final userDoc = await _firestore.userDocument();
      final shopId = shop.id.getOrCrash();

      await userDoc.shopCollection
          .doc(shopId)
          .workerCollection
          .get()
          .then((snapshot) {
        for (final ds in snapshot.docs) {
          ds.reference.delete();
        }
      });
      await userDoc.shopCollection.doc(shopId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  Either<ShopFailure, Unit> _handlePlatformExceptions(FirebaseException e) {
    if (e.message.contains('permission-denied')) {
      return left(const ShopFailure.insufficientPermissions());
    } else if (e.message.contains('not-found')) {
      // TODO log.error(e.toString);
      return left(const ShopFailure.unableToUpdate());
    } else {
      // TODO log.error(e.toString);
      return left(const ShopFailure.unexpected());
    }
  }
}
