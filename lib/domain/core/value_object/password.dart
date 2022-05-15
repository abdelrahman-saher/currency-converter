import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../core/validators/value_validators.dart';
import '../../core/value_failures/value_failure.dart';
import '../../core/value_object/value_object.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PasswordVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PasswordVO(String input, {BuildContext? context}) {
    // if name is valid will return string value
    // else it will return InvalidName failure
    if (ValueValidator.validatePassword(input)) {
      return PasswordVO._(right(input));
    } else {
      return PasswordVO._(left(ValueFailure.invalidPassword(
          failedValue: _getErrorMessage(context))));
    }
  }

  const PasswordVO._(this.value);

  static String? _getErrorMessage(BuildContext? context) {
    if (context == null) {
      return "Oops! Your Password Is Not Correct";
    } else {
      return AppLocalizations.of(context)!.invalid_password;
    }
  }
}
