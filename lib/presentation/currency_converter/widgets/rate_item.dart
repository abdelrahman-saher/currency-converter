import 'package:currency_converter/domain/currency_converter/entities/currency_rate.dart';
import 'package:currency_converter/presentation/core/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';

class RateItem extends StatelessWidget {
  final CurrencyRateEntity? rate;
  RateItem(this.rate);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 12.h),
      width: 322.w,
      // height: 76.h,
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
            Text(
              rate!.to!.symbol!.isNotEmpty
                  ? rate!.to!.symbol!
                  : rate!.to!.code!,
              style: MyFonts.heading1.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(width: 20.w),
            VerticalDivider(
              thickness: 1.w,
              color: Colors.black,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                rate!.to!.name!,
                style: MyFonts.mediumText.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              rate!.getConvertedBalance().toStringAsFixed(2) +
                  " " +
                  rate!.to!.code!,
              style: MyFonts.boldMediumText.copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
