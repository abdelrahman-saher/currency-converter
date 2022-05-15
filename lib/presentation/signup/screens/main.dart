import 'package:currency_converter/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../injection.dart';
import '../bloc/sign_up_bloc.dart';
import '../widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkBlue,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: BlocProvider(
              create: (context) =>
                  getIt<SignUpBloc>()..add(SignUpEvent.setContext(context)),
              child: const SignUpForm(),
            ),
          ),
        ),
      ),
    );
  }
}
