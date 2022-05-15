import 'package:currency_converter/domain/currency_converter/entities/currency.dart';
import 'package:currency_converter/presentation/currency_converter/bloc/main/currency_converter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';
import 'currency_dialog.dart';

class AddNewCurrency extends StatelessWidget {
  final List<CurrencyEntity>? currencies;
  final List<CurrencyEntity>? convertedCurrencies;
  final bool? load;
  const AddNewCurrency({
    Key? key,
    this.currencies,
    this.convertedCurrencies,
    this.load,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return load!
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => CurrencyDialog(
                  currencies: currencies,
                  convertMode: true,
                  convertedCurrencies: convertedCurrencies,
                ),
              ).then((value) {
                if (value != null) {
                  BlocProvider.of<CurrencyConverterBloc>(context)
                      .add(CurrencyConverterEvent.addNewCurrency(value));
                }
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 12.h),
              margin: EdgeInsets.only(bottom: 20.h),
              width: 322.w,
              height: 76.h,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: MyColors.shadow,
                    blurRadius: 2.r,
                    spreadRadius: 2.r,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    const Icon(
                      Icons.add_circle_outline,
                    ),
                    SizedBox(width: 20.w),
                    Container(
                      width: 1.w,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.currency_screen_add,
                        style: MyFonts.mediumText.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
