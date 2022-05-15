import 'package:currency_converter/data/login/model/credentials.dart';

abstract class LoginLocalDataSource {
  Future<void> cacheUser(CredentialsModel user);
}
