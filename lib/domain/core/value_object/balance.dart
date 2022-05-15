import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../core/validators/value_validators.dart';
import '../../core/value_failures/value_failure.dart';
import '../../core/value_object/value_object.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BalanceVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory BalanceVO(String input, {BuildContext? context}) {
    if (ValueValidator.validateBalance(input)) {
      return BalanceVO._(right(input));
    } else {
      return BalanceVO._(
        left(
          ValueFailure.invalidBalance(
            failedValue: getErrorMessage(context),
          ),
        ),
      );
    }
  }

  const BalanceVO._(this.value);

  static String? getErrorMessage(BuildContext? context) {
    if (context == null) {
      return "Please enter a valid balance";
    } else {
      return AppLocalizations.of(context)!.invalid_balance;
    }
  }
}
