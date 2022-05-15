import 'package:currency_converter/injection.dart';
import 'package:currency_converter/presentation/auth/bloc/authenticate/auth_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/colors.dart';
import '../widgets/splash_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkBlue,
      body: BlocProvider(
        create: (context) => getIt<AuthUserBloc>()..add(const AuthUserEvent.authEvent()),
        child: const Center(
          child: SplashWidget(),
        ),
      ),
    );
  }
}
