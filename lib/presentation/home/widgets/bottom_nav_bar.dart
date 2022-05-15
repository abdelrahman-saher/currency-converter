import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60.h,
          color: MyColors.white,
        ),
        Positioned(
          top: -37.r,
          left: (1.sw - 74.r) / 2,
          child: Container(
            height: 74.r,
            width: 74.r,
            decoration: BoxDecoration(
              color: MyColors.lightBlue,
              borderRadius: BorderRadius.circular(37.r),
            ),
            child: Center(
              child: Container(
                height: 60.r,
                width: 60.r,
                decoration: BoxDecoration(
                  color: MyColors.darkBlue,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Icon(
                  Icons.home,
                  size: 45.r,
                  color: MyColors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
