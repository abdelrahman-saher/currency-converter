import 'package:currency_converter/data/login/model/credentials.dart';

abstract class LoginRemoteDataSource {
  Future<CredentialsModel?> loginWithEmailAndPassword(CredentialsModel user);
  Future<CredentialsModel?> loginWithFacebook(CredentialsModel user);
  Future<CredentialsModel?> loginWithGoogle(CredentialsModel user);
}
