import 'package:equatable/equatable.dart';

import '../../../domain/sign_up/entities/user.dart';

class UserModel extends Equatable {
  final String? userName, email, password;
  String? facebookId, googleId, token;
  static const String? USER_ID_BOX_KEY = 'token';
  static const String? USER_NAME_BOX_KEY = 'name';
  UserModel(
    this.userName,
    this.email,
    this.password,
  );
  factory UserModel.fromDomain(UserEnitity user) {
    return UserModel(
      user.userName!.getNotNullValue(),
      user.email!.getNotNullValue(),
      user.password!.getNotNullValue(),
    );
  }
  Map<String, String> toJson() {
    return {
      'username': userName!,
      'email': email!,
      'password': password ?? "",
      'facebookId': facebookId ?? "",
      'googleId': googleId ?? "",
    };
  }

  void setFacebookId(String value) {
    facebookId = value;
  }

  void setGoogleId(String value) {
    googleId = value;
  }

  void setToken(String value) {
    token = value;
  }

  @override
  List<Object?> get props => [userName, email, password];
}
