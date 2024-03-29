import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

import 'package:firebase_ddd_tutorial/domain/auth/auth_failure.dart';
import 'package:firebase_ddd_tutorial/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_tutorial/domain/auth/auth_user.dart';
import 'package:firebase_ddd_tutorial/domain/auth/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/infrastructure/auth/firebase_user_mapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

const ERROR_USER_NOT_FOUND = 'user-not-found';
const ERROR_WRONG_PASSWORD = 'wrong-password';
const ERROR_EMAIL_ALREADY_IN_USE = 'email-already-in-use';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailStr = emailAddress.getOrCrash();
    final passwortStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwortStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == ERROR_EMAIL_ALREADY_IN_USE) {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailStr = emailAddress.getOrCrash();
    final passwortStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwortStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == ERROR_WRONG_PASSWORD || e.code == ERROR_USER_NOT_FOUND) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<AuthUser>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<void> signOut() =>
      Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);
}
