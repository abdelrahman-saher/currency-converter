import 'package:currency_converter/data/login/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import '../entities/crredentials.dart';

abstract class LoginRepository {
  Future<Either<LoginFailures, Unit>> loginWithFacebook();
  Future<Either<LoginFailures, Unit>> loginWithGoogle();
  Future<Either<LoginFailures, Unit>> loginWithEmailAndPassword(
      {@required CredentialsEntity? user});
}
