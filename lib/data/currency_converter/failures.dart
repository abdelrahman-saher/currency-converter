import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CurrencyConverterFailures {
  CurrencyConverterFailures();
  factory CurrencyConverterFailures.serverFailure() => ServerFailure();
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.login_screen_failure;
  }
}

class ServerFailure extends CurrencyConverterFailures {
  @override
  String toLocalMessage(BuildContext context) {
    return AppLocalizations.of(context)!.login_screen_failure;
  }
}