import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class MyTextFields {
  static OutlineInputBorder normalBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.r),
    borderSide: const BorderSide(
      color: MyColors.white,
      width: 2,
    ),
  );
  static UnderlineInputBorder underlineBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: MyColors.white, width: 1.h),
  );
}
