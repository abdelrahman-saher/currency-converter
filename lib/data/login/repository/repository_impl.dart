import 'package:currency_converter/data/login/failures.dart';
import 'package:currency_converter/data/login/model/credentials.dart';
import 'package:currency_converter/domain/login/entities/crredentials.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/login/repositories/login_repository.dart';
import '../data/local/local_data_source.dart';
import '../data/remote/remote_data_source.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource _loginRemoteDataSource;
  final LoginLocalDataSource _loginLocalDataSource;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  LoginRepositoryImpl(
    this._loginRemoteDataSource,
    this._loginLocalDataSource,
    this._googleSignIn,
    this._facebookAuth,
  );

  @override
  Future<Either<LoginFailures, Unit>> loginWithEmailAndPassword(
      {CredentialsEntity? user}) async {
    try {
      CredentialsModel? credentialsModel = CredentialsModel.fromDomain(user!);
      credentialsModel = await _loginRemoteDataSource
          .loginWithEmailAndPassword(credentialsModel);
      await _loginLocalDataSource.cacheUser(credentialsModel!);
      return right(unit);
    } on DioError catch (e) {
      String? error = e.response!.data['message'];
      switch (error) {
        case "wrong-credentials":
          return Left(LoginFailures.wrongCredentials());
        case "user-not-found":
          return Left(LoginFailures.userNotFound());
        default:
          return Left(LoginFailures.serverFailure());
      }
    } catch (e) {
      return Left(LoginFailures.serverFailure());
    }
  }

  @override
  Future<Either<LoginFailures, Unit>> loginWithFacebook() async {
    try {
      final facebookUser = await _facebookAuth.login(
        loginBehavior: LoginBehavior.webOnly,
      );
      if (facebookUser.status == LoginStatus.cancelled) {
        return left(LoginFailures.cancelledByUser());
      } else if (facebookUser.status == LoginStatus.failed) {
        return Left(LoginFailures.serverFailure());
      }
      final userData = await _facebookAuth.getUserData();
      CredentialsModel? user = CredentialsModel(
        userData['email'] ?? facebookUser.accessToken!.userId + "@fb.com",
        null,
      );
      user.setFacebookId(facebookUser.accessToken!.userId);
      user = await _loginRemoteDataSource.loginWithFacebook(user);
      await _loginLocalDataSource.cacheUser(user!);
      return right(unit);
    } on DioError catch (e) {
      String? error = e.response!.data['message'];
      switch (error) {
        case "wrong-credentials":
          return Left(LoginFailures.wrongCredentials());
        case "user-not-found":
          return Left(LoginFailures.userNotFound());
        default:
          return Left(LoginFailures.serverFailure());
      }
    } catch (e) {
      return Left(LoginFailures.serverFailure());
    } finally {
      _facebookAuth.logOut();
    }
  }

  @override
  Future<Either<LoginFailures, Unit>> loginWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(LoginFailures.cancelledByUser());
      }
      CredentialsModel? user = CredentialsModel(googleUser.email, null);
      user.setGoogleId(googleUser.id);
      user = await _loginRemoteDataSource.loginWithGoogle(user);
      await _loginLocalDataSource.cacheUser(user!);
      return right(unit);
    } on DioError catch (e) {
      String? error = e.response!.data['message'];
      switch (error) {
        case "wrong-credentials":
          return Left(LoginFailures.wrongCredentials());
        case "user-not-found":
          return Left(LoginFailures.userNotFound());
        default:
          return Left(LoginFailures.serverFailure());
      }
    } catch (e) {
      return Left(LoginFailures.serverFailure());
    } finally {
      await _googleSignIn.signOut();
    }
  }
}
