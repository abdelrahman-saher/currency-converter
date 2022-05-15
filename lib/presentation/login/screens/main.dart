import 'package:currency_converter/presentation/core/colors.dart';
import 'package:currency_converter/presentation/login/bloc/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../injection.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
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
                  getIt<LoginBloc>()..add(LoginEvent.setContext(context)),
              child: const LoginForm(),
            ),
          ),
        ),
      ),
    );
  }
}
