import 'package:currency_converter/domain/login/entities/crredentials.dart';
import 'package:equatable/equatable.dart';

class CredentialsModel extends Equatable {
  final String? email;
  final String? password;
  String? facebookId, googleId, token, userName;
  CredentialsModel(
    this.email,
    this.password,
  );
  factory CredentialsModel.fromDomain(CredentialsEntity credentials) {
    return CredentialsModel(
      credentials.email!.getNotNullValue(),
      credentials.password!.getNotNullValue(),
    );
  }
  Map<String, String> toJson() {
    return {
      'email': email!,
      'password': password ?? "",
      'facebookId': facebookId ?? "",
      'googleId': googleId ?? "",
    };
  }

  void setToken(String value) {
    token = value;
  }

  void setFacebookId(String value) {
    facebookId = value;
  }

  void setGoogleId(String value) {
    googleId = value;
  }

  void setUserName(String value) {
    userName = value;
  }

  @override
  List get props => [email];
}
