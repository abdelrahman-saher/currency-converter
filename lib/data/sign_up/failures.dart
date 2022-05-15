import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignupFailures {
  SignupFailures();
  factory SignupFailures.serverFailure() => ServerFailure();
  factory SignupFailures.userExists() => UserExists();
  factory SignupFailures.cancelledByUser() => CancelledByUser();
  factory SignupFailures.localFailure() => LocalFailure();
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.signup_screen_failure;
  }
}

class ServerFailure extends SignupFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.signup_screen_failure;
  }
}

class UserExists extends SignupFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.signup_screen_user_exists;
  }
}

class CancelledByUser extends SignupFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.signup_screen_cancel;
  }
}

class LocalFailure extends SignupFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.signup_screen_failure;
  }
}
