import 'package:currency_converter/presentation/core/colors.dart';
import 'package:currency_converter/presentation/core/custom_buttons.dart';
import 'package:currency_converter/presentation/core/fonts.dart';
import 'package:currency_converter/presentation/core/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../router.gr.dart';
import '../bloc/sign_up_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(listener: (context, state) {
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
                      AppLocalizations.of(context)!.signup_screen_title,
                      style: MyFonts.heading2.copyWith(color: MyColors.white),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    TextFormField(
                      style: MyFonts.boldMediumText.copyWith(
                        color: MyColors.white,
                      ),
                      initialValue: state.userName!.getNotNullValue(),
                      validator: (_) => state.userName!.getFailureValue(),
                      onChanged: (value) => context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.changeUserName(value, context)),
                      decoration: InputDecoration(
                        enabledBorder: MyTextFields.normalBorder,
                        focusedBorder: MyTextFields.normalBorder,
                        focusedErrorBorder: MyTextFields.normalBorder,
                        border: MyTextFields.normalBorder,
                        labelText:
                            AppLocalizations.of(context)!.signup_screen_name,
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
                      initialValue: state.emailVO!.getNotNullValue(),
                      validator: (_) => state.emailVO!.getFailureValue(),
                      onChanged: (value) => context
                          .read<SignUpBloc>()
                          .add(SignUpEvent.changeEmail(value, context)),
                      decoration: InputDecoration(
                        enabledBorder: MyTextFields.normalBorder,
                        focusedBorder: MyTextFields.normalBorder,
                        focusedErrorBorder: MyTextFields.normalBorder,
                        border: MyTextFields.normalBorder,
                        labelText:
                            AppLocalizations.of(context)!.signup_screen_email,
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
                          .read<SignUpBloc>()
                          .add(SignUpEvent.changePassword(value, context)),
                      decoration: InputDecoration(
                        enabledBorder: MyTextFields.normalBorder,
                        focusedBorder: MyTextFields.normalBorder,
                        focusedErrorBorder: MyTextFields.normalBorder,
                        border: MyTextFields.normalBorder,
                        labelText: AppLocalizations.of(context)!
                            .signup_screen_password,
                        labelStyle: MyFonts.boldMediumText.copyWith(
                          color: MyColors.white,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () => context
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.showPassword()),
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
                      height: 20.h,
                    ),
                    TextFormField(
                      style: MyFonts.boldMediumText.copyWith(
                        color: MyColors.white,
                      ),
                      initialValue: state.confirmPassword!.getNotNullValue(),
                      validator: (_) =>
                          state.confirmPassword!.getFailureValue(),
                      obscureText: !state.showConfirmPassword!,
                      onChanged: (value) => context.read<SignUpBloc>().add(
                          SignUpEvent.changeConfirmPassword(value, context)),
                      decoration: InputDecoration(
                        enabledBorder: MyTextFields.normalBorder,
                        focusedBorder: MyTextFields.normalBorder,
                        focusedErrorBorder: MyTextFields.normalBorder,
                        border: MyTextFields.normalBorder,
                        labelText: AppLocalizations.of(context)!
                            .signup_screen_confirm_password,
                        labelStyle: MyFonts.boldMediumText.copyWith(
                          color: MyColors.white,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () => context
                              .read<SignUpBloc>()
                              .add(const SignUpEvent.showConfirmPassword()),
                          child: Icon(
                            state.showConfirmPassword!
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                      autocorrect: false,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButtons.normalButton(
                      text: AppLocalizations.of(context)!.signup_screen_submit,
                      onTap: () {
                        context.read<SignUpBloc>().add(
                            const SignUpEvent.signUpWithEmailAndPassword());
                      },
                    ),
                    SizedBox(
                      height: 36.h,
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
                            AppLocalizations.of(context)!.signup_screen_or,
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
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context
                                .read<SignUpBloc>()
                                .add(const SignUpEvent.signUpWithFacebook());
                          },
                          child: Container(
                            padding: EdgeInsets.all(4.h),
                            width: 150.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                            ),
                            child: Image.asset("assets/facebook.png"),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context
                                .read<SignUpBloc>()
                                .add(const SignUpEvent.signUpWithGoogle());
                          },
                          child: Container(
                            width: 150.w,
                            height: 40.h,
                            padding: EdgeInsets.all(4.h),
                            decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                            ),
                            child: Image.asset("assets/google.png"),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      AppLocalizations.of(context)!.signup_screen_terms,
                      textAlign: TextAlign.center,
                      style: MyFonts.mediumText.copyWith(color: MyColors.white),
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
