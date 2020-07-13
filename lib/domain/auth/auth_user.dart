import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';

@freezed
abstract class AuthUser with _$AuthUser {
  const factory AuthUser({
    @required UniqueId id,
  }) = _AuthUser;
}
