import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginFailures {
  LoginFailures();
  factory LoginFailures.serverFailure() => ServerFailure();
  factory LoginFailures.userNotFound() => UserNotFound();
  factory LoginFailures.cancelledByUser() => CancelledByUser();
  factory LoginFailures.localFailure() => LocalFailure();
  factory LoginFailures.wrongCredentials() => WrongCredentials();
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.login_screen_failure;
  }
}

class ServerFailure extends LoginFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.login_screen_failure;
  }
}

class UserNotFound extends LoginFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.login_screen_user_not_found;
  }
}

class CancelledByUser extends LoginFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.login_screen_cancel;
  }
}

class LocalFailure extends LoginFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.login_screen_failure;
  }
}

class WrongCredentials extends LoginFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.login_screen_wrong_credentials;
  }
}
