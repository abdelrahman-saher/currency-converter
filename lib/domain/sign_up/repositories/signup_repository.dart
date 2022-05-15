import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../data/sign_up/failures.dart';
import '../entities/user.dart';

abstract class SignupRepository {
  Future<Either<SignupFailures, Unit>> signupWithFacebook();
  Future<Either<SignupFailures, Unit>> signupWithGoogle();
  Future<Either<SignupFailures, Unit>> createUserWithEmailAndPassword(
      {@required UserEnitity? user});
}
