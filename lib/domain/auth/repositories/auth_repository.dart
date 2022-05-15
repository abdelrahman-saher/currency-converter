import 'package:dartz/dartz.dart';

import '../../../data/auth/failures.dart';

abstract class AuthRepository {
  Future<Either<AuthFailures, Unit>> getSignedInUser();
  Future<Either<AuthFailures, Unit>> logOut();
}
