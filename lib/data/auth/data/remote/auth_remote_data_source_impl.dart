import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'auth_remote_data_source.dart';

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;
  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<void> logOut(String? token) async {
    try {} catch (e) {
      rethrow;
    }
  }
}
