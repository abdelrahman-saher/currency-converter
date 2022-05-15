import 'package:currency_converter/presentation/core/colors.dart';
import 'package:currency_converter/presentation/core/custom_buttons.dart';
import 'package:currency_converter/presentation/core/fonts.dart';
import 'package:currency_converter/presentation/core/textfields.dart';
import 'package:currency_converter/presentation/login/bloc/bloc/login_bloc.dart';
import 'package:currency_converter/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
      state.result!.fold(() => null, (either) {
        either.fold((l) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l.toLocalMessage(context)),
            ),
          );
        }, (r) {
          context.router.pushAndPopUntil(const SplashScreenRoute(),
              predicate: (Route<dynamic> route) => false);
        });
      });
    }, builder: (context, state) {
      return state.isLoading!
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Form(
                autovalidateMode: state.showErrorMessages!
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 22.5.h,
                    ),
                    Image.asset(
                      "assets/logo.png",
                      height: 81.97.h,
                    ),
                    SizedBox(
                      height: 22.5.h,
                    ),
                    Text(
                      AppLocalizations.of(context)!.login_screen_title,
                      style: MyFonts.heading2.copyWith(color: MyColors.white),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    TextFormField(
                      style: MyFonts.boldMediumText.copyWith(
                        color: MyColors.white,
                      ),
                      initialValue: state.emailVO!.getNotNullValue(),
                      validator: (_) => state.emailVO!.getFailureValue(),
                      onChanged: (value) => context
                          .read<LoginBloc>()
                          .add(LoginEvent.changeEmail(value)),
                      decoration: InputDecoration(
                        enabledBorder: MyTextFields.normalBorder,
                        focusedBorder: MyTextFields.normalBorder,
                        focusedErrorBorder: MyTextFields.normalBorder,
                        border: MyTextFields.normalBorder,
                        labelText: AppLocalizations.of(context)!.login_screen_email,
                        labelStyle: MyFonts.boldMediumText.copyWith(
                          color: MyColors.white,
                        ),
                      ),
                      autocorrect: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      style: MyFonts.boldMediumText.copyWith(
                        color: MyColors.white,
                      ),
                      initialValue: state.password!.getNotNullValue(),
                      validator: (_) => state.password!.getFailureValue(),
                      obscureText: !state.showPassword!,
                      onChanged: (value) => context
                          .read<LoginBloc>()
                          .add(LoginEvent.changePassword(value)),
                      decoration: InputDecoration(
                        enabledBorder: MyTextFields.normalBorder,
                        focusedBorder: MyTextFields.normalBorder,
                        focusedErrorBorder: MyTextFields.normalBorder,
                        border: MyTextFields.normalBorder,
                        labelText: AppLocalizations.of(context)!.login_screen_password,
                        labelStyle: MyFonts.boldMediumText.copyWith(
                          color: MyColors.white,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () => context
                              .read<LoginBloc>()
                              .add(const LoginEvent.showPassword()),
                          child: Icon(
                            state.showPassword!
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                      autocorrect: false,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomButtons.normalButton(
                      text: AppLocalizations.of(context)!.login_screen_submit,
                      onTap: () {
                        context
                            .read<LoginBloc>()
                            .add(const LoginEvent.loginWithEmailAndPassword());
                      },
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: MyColors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Text(
                            AppLocalizations.of(context)!.login_screen_or,
                            style: MyFonts.boldMediumText
                                .copyWith(color: MyColors.white),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: MyColors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<LoginBloc>()
                            .add(const LoginEvent.loginWithFacebook());
                      },
                      child: Container(
                        padding: EdgeInsets.all(4.h),
                        width: 1.sw,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(
                            5.r,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/facebook_light.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              AppLocalizations.of(context)!.login_screen_fb,
                              style: MyFonts.boldMediumText,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        context
                            .read<LoginBloc>()
                            .add(const LoginEvent.loginWithGoogle());
                      },
                      child: Container(
                        width: 1.sw,
                        height: 40.h,
                        padding: EdgeInsets.all(4.h),
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          borderRadius: BorderRadius.circular(
                            5.r,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/google.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              AppLocalizations.of(context)!.login_screen_google,
                              style: MyFonts.boldMediumText,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22.5.h,
                    ),
                  ],
                ),
              ),
            );
    });
  }
}
