import 'package:auto_route/auto_route.dart';
import 'package:currency_converter/presentation/core/custom_buttons.dart';
import 'package:currency_converter/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/colors.dart';
import 'core/fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'language/screen/language_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkBlue,
      body: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              height: 81.97.h,
            ),
            SizedBox(
              height: 22.5.h,
            ),
            Text(
              AppLocalizations.of(context)!.main_screen_title,
              style: MyFonts.heading2.copyWith(color: MyColors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButtons.normalButton(
              text: AppLocalizations.of(context)!.main_screen_sign_in,
              onTap: () {
                context.router.push(const LoginScreenRoute());
              },
            ),
            SizedBox(
              height: 22.5.h,
            ),
            CustomButtons.whiteButton(
              text: AppLocalizations.of(context)!.main_screen_sign_up,
              onTap: () {
                context.router.push(const SignUpScreenRoute());
              },
            ),
            SizedBox(
              height: 22.5.h,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => LanguageDialog(),
                );
              },
              child: Container(
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                  color: MyColors.darkBlue,
                  borderRadius: BorderRadius.circular(20.h),
                  border: Border.all(color: MyColors.white, width: 1.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
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
                      AppLocalizations.of(context)!.drawer_language,
                      style: MyFonts.mediumText.copyWith(
                        color: MyColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
