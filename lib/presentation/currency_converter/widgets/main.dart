import 'package:currency_converter/presentation/core/fonts.dart';
import 'package:currency_converter/presentation/currency_converter/bloc/main/currency_converter_bloc.dart';
import 'package:currency_converter/presentation/currency_converter/widgets/converted_currencies.dart';
import 'package:currency_converter/presentation/currency_converter/widgets/currency_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/colors.dart';
import '../../core/textfields.dart';

class CurrencyConverterMainPage extends StatelessWidget {
  const CurrencyConverterMainPage({Key? key}) : super(key: key);
  Widget _buildEditButton(context) {
    return Container(
      height: 40.h,
      width: 80.w,
      decoration: BoxDecoration(
        color: MyColors.darkBlue,
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(color: MyColors.white, width: 1.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.edit,
            color: MyColors.white,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            AppLocalizations.of(context)!.currency_screen_edit,
            style: MyFonts.mediumText.copyWith(
              color: MyColors.white,
            ),
          ),
        ],
      ),
    );
  }

  EdgeInsets _getPrefixMargine(context) {
    return AppLocalizations.of(context)!.localeName == "en"
        ? EdgeInsets.only(right: 10.w)
        : EdgeInsets.only(left: 10.w);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrencyConverterBloc, CurrencyConverterState>(
        builder: (context, state) {
      return state.isLoading!
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 27.w),
                  height: 260.h,
                  width: 1.sw,
                  color: MyColors.darkBlue,
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          AppLocalizations.of(context)!.currency_screen_balance,
                          style: MyFonts.largeText.copyWith(
                            color: MyColors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: MyFonts.heading1.copyWith(
                                  color: MyColors.white,
                                ),
                                initialValue: state.balance!.getNotNullValue(),
                                validator: (_) =>
                                    BlocProvider.of<CurrencyConverterBloc>(
                                            context)
                                        .state
                                        .balance!
                                        .getFailureValue(),
                                onChanged: (value) =>
                                    context.read<CurrencyConverterBloc>().add(
                                          CurrencyConverterEvent.changeBalance(
                                            value,
                                          ),
                                        ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  enabledBorder: MyTextFields.underlineBorder,
                                  focusedBorder: MyTextFields.underlineBorder,
                                  focusedErrorBorder:
                                      MyTextFields.underlineBorder,
                                  border: MyTextFields.underlineBorder,
                                  prefix: Container(
                                    margin: _getPrefixMargine(context),
                                    child: Text(
                                      state.selectedCurrency!.symbol!.isEmpty
                                          ? state.selectedCurrency!.code!
                                          : state.selectedCurrency!.symbol!,
                                      style: MyFonts.heading1.copyWith(
                                        color: MyColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                autocorrect: false,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => CurrencyDialog(
                                    currencies: state.supportedCurrencies,
                                    selectedCurrency: state.selectedCurrency,
                                  ),
                                ).then((value) {
                                  if (value != null) {
                                    BlocProvider.of<CurrencyConverterBloc>(
                                            context)
                                        .add(CurrencyConverterEvent
                                            .changeSelectedCurrency(value));
                                  }
                                });
                              },
                              child: _buildEditButton(context),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 1.sw,
                        color: MyColors.lightBlue,
                      ),
                      Positioned(
                        child: Center(
                          child: Container(
                            color: Colors.transparent,
                            width: 1.sw,
                            height: 1.sh - 340.h,
                            child: ConvertedCurrenciesList(
                              state.convertedCurrencies,
                              state.supportedCurrencies,
                              state.convertToCurrencies,
                              state.isAddingNewCurrency!,
                            ),
                          ),
                        ),
                        top: -70.h,
                      ),
                    ],
                  ),
                )
              ],
            );
    });
  }
}
