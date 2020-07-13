import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ddd_tutorial/domain/auth/auth_user.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  AuthUser toDomain() {
    return AuthUser(id: UniqueId.fromUniqueString(uid));
  }
}
