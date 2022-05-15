import 'package:currency_converter/data/login/data/remote/remote_data_source.dart';
import 'package:currency_converter/data/login/model/credentials.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final Dio _dio;
  String? _url;
  LoginRemoteDataSourceImpl(this._dio) {
    _url = dotenv.env['BASE_URL'];
  }
  @override
  Future<CredentialsModel?> loginWithEmailAndPassword(
      CredentialsModel user) async {
    try {
      final response = await _dio.post(
        _url! + "/user/login",
        data: user.toJson(),
        options: Options(
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        ),
      );
      user.setToken(response.data['token']);
      user.setUserName(response.data['username']);
      return user;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CredentialsModel?> loginWithFacebook(CredentialsModel user) async {
    try {
      final response = await _dio.post(
        _url! + "/user/loginwithfb",
        data: user.toJson(),
        options: Options(
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        ),
      );
      user.setToken(response.data['token']);
      user.setUserName(response.data['username']);
      return user;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CredentialsModel?> loginWithGoogle(CredentialsModel user) async {
    try {
      final response = await _dio.post(
        _url! + "/user/loginwithgoogle",
        data: user.toJson(),
        options: Options(
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        ),
      );
      user.setToken(response.data['token']);
      user.setUserName(response.data['username']);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}
