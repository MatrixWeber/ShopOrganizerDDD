import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/user/i_user_repository.dart';
import 'package:firebase_ddd_tutorial/domain/user/user.dart';
import 'package:firebase_ddd_tutorial/infrastructure/user/user_dtos.dart';
import 'package:firebase_ddd_tutorial/domain/user/user_failure.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final Firestore _firestore;

  UserRepository(this._firestore);

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomain(user);

      await userDoc.userCollection
          .document(userDto.id)
          .setData(userDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handleInsufficientPermissionAndUnexpectedPlatformException(e);
    }
  }

  Either<UserFailure, Unit>
      _handleInsufficientPermissionAndUnexpectedPlatformException(
          PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const UserFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomain(user);

      await userDoc.userCollection
          .document(userDto.id)
          .updateData(userDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  @override
  Future<Either<UserFailure, Unit>> delete(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userId = user.id.getOrCrash();

      await userDoc.userCollection.document(userId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  Either<UserFailure, Unit> _handlePlatformExceptions(PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const UserFailure.insufficientPermissions());
    } else if (e.message.contains('NOT_FOUND')) {
      // TODO log.error(e.toString);
      return left(const UserFailure.unableToUpdate());
    } else {
      // TODO log.error(e.toString);
      return left(const UserFailure.unexpected());
    }
  }
}
