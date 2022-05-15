import 'package:auto_route/auto_route.dart';
import 'package:currency_converter/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:currency_converter/presentation/language/screen/language_screen.dart';
import 'package:currency_converter/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/auth/models/user.dart';
import '../../auth/widgets/log_out_dialog.dart';
import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../language/bloc/language_bloc.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutBloc, LogoutState>(
        listener: (context, state) {
          if (state is DoneState) {
            context.router.replace(const MainScreenRoute());
          }
        },
        child: Drawer(
          child: SizedBox(
            height: 1.sh,
            child: Column(
              // shrinkWrap: true,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: DrawerHeader(
                    child: Column(children: [
                      Image.asset(
                        "assets/lavatar.png",
                        height: 100.h,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        AuthUserSingleton().name!,
                        textAlign: TextAlign.center,
                        style: MyFonts.heading3.copyWith(color: MyColors.white),
                      ),
                    ]),
                    decoration: const BoxDecoration(
                      color: MyColors.darkBlue,
                    ),
                  ),
                ),
                ListTile(
                  leading: Container(
                      height: double.infinity,
                      child: const Icon(
                        Icons.language,
                        color: MyColors.darkBlue,
                      )),
                  title: Text(
                    AppLocalizations.of(context)!.drawer_language,
                    style: MyFonts.boldMediumText.copyWith(
                      color: MyColors.darkBlue,
                    ),
                  ),
                  subtitle: Text(BlocProvider.of<LanguageBloc>(context)
                      .state
                      .selectedLanguage!
                      .fullName),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => LanguageDialog(),
                    );
                  },
                ),
                Expanded(child: Container()),
                ListTile(
                  leading: Container(
                      height: double.infinity,
                      child: const Icon(
                        Icons.logout,
                        color: MyColors.red,
                      )),
                  title: Text(
                    AppLocalizations.of(context)!.drawer_logout,
                    style: MyFonts.boldMediumText.copyWith(
                      color: MyColors.darkBlue,
                    ),
                  ),
                  onTap: () {
                    showDialog<bool>(
                        context: context,
                        builder: (BuildContext context) =>
                            const LogOutDialog()).then(
                      (value) {
                        if (value!) {
                          BlocProvider.of<LogoutBloc>(context)
                              .add(const LogoutEvent.logout());
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
