import 'package:dartz/dartz.dart';

import 'user.dart';
import 'user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, Unit>> create(User user);
  Future<Either<UserFailure, Unit>> update(User user);
  Future<Either<UserFailure, Unit>> delete(User user);
}
