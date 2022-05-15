import 'package:currency_converter/data/sign_up/data/remote/signup_remote_data_source.dart';
import 'package:currency_converter/data/sign_up/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SignupRemoteDataSource)
class SignupRemoteDataSourceImpl implements SignupRemoteDataSource {
  final Dio _dio;
  String? _url;
  SignupRemoteDataSourceImpl(this._dio) {
    _url = dotenv.env['BASE_URL'];
  }
  @override
  Future<String?> signupWithEmailAndPassword(UserModel user) async {
    try {
      final response = await _dio.post(
        _url! + "/user/signup",
        data: user.toJson(),
        options: Options(
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        ),
      );
      return response.data['token'];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> signupWithFacebook(UserModel user) async {
    try {
      final response = await _dio.post(
        _url! + "/user/signupwithfb",
        data: user.toJson(),
        options: Options(
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        ),
      );
      return response.data['token'];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> signupWithGoogle(UserModel user) async {
    try {
      final response = await _dio.post(
        _url! + "/user/signupwithgoogle",
        data: user.toJson(),
        options: Options(
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        ),
      );
      return response.data['token'];
    } catch (e) {
      rethrow;
    }
  }
}
