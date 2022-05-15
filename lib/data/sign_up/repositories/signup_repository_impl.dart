import 'package:currency_converter/data/sign_up/data/remote/signup_remote_data_source.dart';
import 'package:currency_converter/data/sign_up/failures.dart';
import 'package:currency_converter/data/sign_up/models/user_model.dart';
import 'package:currency_converter/domain/sign_up/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/sign_up/repositories/signup_repository.dart';
import '../data/local/signup_local_data_source.dart';

@Injectable(as: SignupRepository)
class SignupRepositoryImpl implements SignupRepository {
  final SignupRemoteDataSource _signupRemoteDataSource;
  final SignupLocalDataSource _signupLocalDataSource;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  SignupRepositoryImpl(
    this._signupRemoteDataSource,
    this._signupLocalDataSource,
    this._googleSignIn,
    this._facebookAuth,
  );
  @override
  Future<Either<SignupFailures, Unit>> createUserWithEmailAndPassword(
      {UserEnitity? user}) async {
    try {
      UserModel userModel = UserModel.fromDomain(user!);
      String? token =
          await _signupRemoteDataSource.signupWithEmailAndPassword(userModel);
      userModel.setToken(token!);
      await _signupLocalDataSource.cacheUser(userModel);
      return right(unit);
    } on DioError catch (e) {
      String? error = e.response!.data['message'];
      switch (error) {
        case "user-already-exists":
          return Left(SignupFailures.userExists());
        case "general-error":
          return Left(SignupFailures.serverFailure());
        default:
          return Left(SignupFailures.serverFailure());
      }
    } catch (e) {
      return Left(SignupFailures.serverFailure());
    }
  }

  @override
  Future<Either<SignupFailures, Unit>> signupWithFacebook() async {
    try {
      final facebookUser = await _facebookAuth.login(
        loginBehavior: LoginBehavior.webOnly,
      );
      if (facebookUser.status == LoginStatus.cancelled) {
        return left(SignupFailures.cancelledByUser());
      } else if (facebookUser.status == LoginStatus.failed) {
        return Left(SignupFailures.serverFailure());
      }
      final userData = await _facebookAuth.getUserData();
      UserModel user = UserModel(
          userData['name'],
          userData['email'] ?? facebookUser.accessToken!.userId + "@fb.com",
          null);
      user.setFacebookId(facebookUser.accessToken!.userId);
      String? token = await _signupRemoteDataSource.signupWithFacebook(user);
      user.setToken(token!);
      await _signupLocalDataSource.cacheUser(user);
      return right(unit);
    } on DioError catch (e) {
      String? error = e.response!.data['message'];
      switch (error) {
        case "user-already-exists":
          return Left(SignupFailures.userExists());
        case "general-error":
          return Left(SignupFailures.serverFailure());
        default:
          return Left(SignupFailures.serverFailure());
      }
    } catch (e) {
      return Left(SignupFailures.serverFailure());
    } finally {
      _facebookAuth.logOut();
    }
  }

  @override
  Future<Either<SignupFailures, Unit>> signupWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(SignupFailures.cancelledByUser());
      }
      UserModel user =
          UserModel(googleUser.displayName, googleUser.email, null);
      user.setGoogleId(googleUser.id);
      String? token = await _signupRemoteDataSource.signupWithGoogle(user);
      user.setToken(token!);
      await _signupLocalDataSource.cacheUser(user);
      return right(unit);
    } on DioError catch (e) {
      String? error = e.response!.data['message'];
      switch (error) {
        case "user-already-exists":
          return Left(SignupFailures.userExists());
        case "general-error":
          return Left(SignupFailures.serverFailure());
        default:
          return Left(SignupFailures.serverFailure());
      }
    } catch (e) {
      return Left(SignupFailures.serverFailure());
    } finally {
      await _googleSignIn.signOut();
    }
  }
}
