import 'package:auto_route/auto_route.dart';
import 'package:currency_converter/presentation/auth/bloc/authenticate/auth_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../router.gr.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthUserBloc, AuthUserState>(
      listener: (context, state) {
        if (state is NotAuthedState) {
          context.router.replace(const MainScreenRoute());
        } else if (state is AuthedState) {
          context.router.replace(const HomeMainScreenRoute());
        }
      },
      builder: (context, state) => Center(
        child: Image.asset(
          "assets/logo.png",
          height: 150.h,
        ),
      ),
    );
  }
}
