import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/repositories/auth_repository.dart';
import '../data/local/auth_local_data_source.dart';
import '../failures.dart';
import '../models/user.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource _authLocalDataSource;
  // final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl(
    this._authLocalDataSource,
  );

  @override
  Future<Either<AuthFailures, Unit>> getSignedInUser() async {
    try {
      Map<String, String>? data = await _authLocalDataSource.getCachedUser();
      String? token = data!['token'];
      String? name = data['name'];
      if (token == null) {
        return left(AuthFailures.notAuthFailure());
      }
      AuthUserSingleton(
        jwt: token,
        name: name,
      );
      return const Right(unit);
    } catch (e) {
      if (e is NotAuthFailure) {
        return Left(e);
      }
      return Left(AuthFailures.serverFailure());
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> logOut() async {
    try {
      Map<String, String>? data = await _authLocalDataSource.getCachedUser();
      String? token = data!['token'];
      if (token == null) {
        return left(AuthFailures.notAuthFailure());
      }
      // await _authRemoteDataSource.logOut(token);
      await _authLocalDataSource.removeAllCached();
      return const Right(unit);
    } catch (e) {
      if (e is NotAuthFailure) {
        return Left(e);
      }
      return Left(AuthFailures.serverFailure());
    }
  }
}
