import 'package:currency_converter/data/auth/models/user.dart';
import 'package:currency_converter/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:currency_converter/presentation/core/colors.dart';
import 'package:currency_converter/presentation/core/fonts.dart';
import 'package:currency_converter/presentation/currency_converter/screens/main.dart';
import 'package:currency_converter/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:currency_converter/presentation/home/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../injection.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LogoutBloc>(create: (context) => getIt<LogoutBloc>()),
      ],
      child: Scaffold(
        drawer: const HomePageDrawer(),
        appBar: AppBar(
          title: Row(children: [
            Expanded(child: Container()),
            Text(
              AuthUserSingleton().name!,
              textAlign: TextAlign.center,
              style: MyFonts.mediumText,
            ),
            SizedBox(
              width: 5.w,
            ),
            Image.asset(
              "assets/avatar.png",
              height: 35.h,
            )
          ]),
          backgroundColor: MyColors.darkBlue,
          elevation: 0,
          bottom: PreferredSize(
              child: Container(
                color: MyColors.white,
                height: 1.0,
              ),
              preferredSize: const Size.fromHeight(1.0)),
        ),
        body: Stack(
          children: [
            const CurrencyConverterMainScreen(),
            Positioned(
              child: BottomNavBar(),
              bottom: 0,
              left: 0,
              right: 0,
            )
          ],
        ),
      ),
    );
  }
}
