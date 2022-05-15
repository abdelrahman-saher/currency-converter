import 'package:flutter/material.dart';

class AuthFailures {
  AuthFailures();
  factory AuthFailures.serverFailure() => ServerFailure();
  factory AuthFailures.notAuthFailure() => NotAuthFailure();

  String toLocalMessage(BuildContext context) {
    return 'AuthFailures';
  }
}

class ServerFailure extends AuthFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return 'ServerFailure';
  }
}

class NotAuthFailure extends AuthFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return 'UserExists';
  }
}
