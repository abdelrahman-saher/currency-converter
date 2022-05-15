import 'package:auto_route/auto_route.dart';
import 'package:currency_converter/domain/currency_converter/entities/currency.dart';
import 'package:currency_converter/domain/language/entities/language.dart';
import 'package:currency_converter/presentation/language/bloc/language_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/fonts.dart';

class CurrencyDialog extends StatelessWidget {
  final List<CurrencyEntity>? currencies;
  final List<CurrencyEntity>? convertedCurrencies;
  final CurrencyEntity? selectedCurrency;
  final bool? convertMode;
  const CurrencyDialog({
    Key? key,
    this.currencies,
    this.selectedCurrency,
    this.convertMode = false,
    this.convertedCurrencies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ), //this right here
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            padding: EdgeInsets.all(15.r),
            height: 200.h,
            width: 215.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.currency_dialog_title,
                  style: MyFonts.heading3,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                DropdownButtonFormField<CurrencyEntity>(
                  items: currencies!
                      .where((element) => convertMode!
                          ? !convertedCurrencies!.contains(element)
                          : true)
                      .toList()
                      .map(
                        (e) => DropdownMenuItem<CurrencyEntity>(
                          child: Text(
                            e.name!.trim(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                          ),
                          value: e,
                          alignment: Alignment.center,
                        ),
                      )
                      .toList()
                    ..sort((a, b) => a.value!.name!.compareTo(b.value!.name!)),
                  onChanged: (language) {
                    context.router.pop(language);
                  },
                  isExpanded: true,
                  value: convertMode!
                      ? currencies!
                          .where((element) => convertMode!
                              ? !convertedCurrencies!.contains(element)
                              : true)
                          .toList()[0]
                      : selectedCurrency,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ));
  }
}
