import 'package:injectable/injectable.dart';
@injectable
class AuthUserSingleton {
  final String? jwt, name;
  static AuthUserSingleton? _instance;
  factory AuthUserSingleton({
    String? jwt,
    String? name,
  }) =>
      _instance ??= AuthUserSingleton._(jwt, name);
  AuthUserSingleton._(this.jwt, this.name);
  String? get token => jwt;
}
