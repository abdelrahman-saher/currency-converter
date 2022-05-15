import 'package:currency_converter/domain/currency_converter/entities/currency_rate.dart';
import 'package:currency_converter/presentation/core/colors.dart';
import 'package:currency_converter/presentation/core/fonts.dart';
import 'package:currency_converter/presentation/currency_converter/widgets/add_convert_currency.dart';
import 'package:currency_converter/presentation/currency_converter/widgets/rate_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/currency_converter/entities/currency.dart';

class ConvertedCurrenciesList extends StatelessWidget {
  final List<CurrencyRateEntity>? rates;
  final List<CurrencyEntity>? currencies;
  final bool? load;
  final List<CurrencyEntity>? convertedCurrencies;
  ConvertedCurrenciesList(
    this.rates,
    this.currencies,
    this.convertedCurrencies,
    this.load,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.w),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.only(left: 27.w, right: 27.w, bottom: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.currency_screen_currency,
                  style: MyFonts.normalText.copyWith(
                    color: MyColors.white,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.currency_screen_changes,
                  style: MyFonts.normalText.copyWith(
                    color: MyColors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              // itemExtent: 100,
              shrinkWrap: true,
              itemBuilder: (contetx, index) {
                if (index == rates!.length) {
                  return AddNewCurrency(
                    convertedCurrencies: convertedCurrencies,
                    currencies: currencies,
                    load: load,
                  );
                }
                return RateItem(rates![index]);
              },
              itemCount: rates!.length + 1,
            ),
          ),
        ],
      ),
    );
  }
}
