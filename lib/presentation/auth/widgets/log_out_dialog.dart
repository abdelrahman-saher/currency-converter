import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({Key? key}) : super(key: key);

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
            height: 240.h,
            width: 215.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.logout_title,
                  style: MyFonts.heading2,
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () => context.router.pop(true),
                  child: Container(
                    width: 125.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: MyColors.darkBlue,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.logout_submit,
                        style: MyFonts.boldMediumText
                            .copyWith(color: MyColors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () => context.router.pop(false),
                  child: SizedBox(
                    width: 125.w,
                    height: 52.h,
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.logout_cancel,
                        style: MyFonts.boldMediumText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
