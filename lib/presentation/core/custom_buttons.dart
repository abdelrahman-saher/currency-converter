import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'fonts.dart';

class CustomButtons {
  static Widget normalButton({Function()? onTap, String? text}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54.h,
        decoration: BoxDecoration(
          color: MyColors.green,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Center(
          child: Text(
            text!,
            style: MyFonts.boldLargeText.copyWith(color: MyColors.white),
          ),
        ),
      ),
    );
  }

  static Widget whiteButton({Function()? onTap, String? text}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: 54.h,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Center(
          child: Text(
            text!,
            style: MyFonts.boldLargeText.copyWith(color: MyColors.darkGrey),
          ),
        ),
      ),
    );
  }
}
