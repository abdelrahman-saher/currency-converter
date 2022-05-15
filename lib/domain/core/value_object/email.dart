import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../core/validators/value_validators.dart';
import '../../core/value_failures/value_failure.dart';
import '../../core/value_object/value_object.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmailVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailVO(String input, {BuildContext? context}) {
    if (ValueValidator.validateEmailAddress(input)) {
      return EmailVO._(right(input));
    } else {
      return EmailVO._(
        left(
          ValueFailure.invalidEmail(
            failedValue: getErrorMessage(context),
          ),
        ),
      );
    }
  }

  const EmailVO._(this.value);

  static String? getErrorMessage(BuildContext? context) {
    if (context == null) {
      return "Oops! Your Email Is Not Correct";
    } else {
      return AppLocalizations.of(context)!.invalid_email;
    }
  }
}
