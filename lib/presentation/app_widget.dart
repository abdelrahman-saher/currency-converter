import 'package:currency_converter/injection.dart';
import 'package:currency_converter/presentation/language/bloc/language_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../router.gr.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<LanguageBloc>()..add(const LanguageEvent.getSelectedLanguage()),
      child: ScreenUtilInit(
        designSize: const Size(375, 809),
        minTextAdapt: true,
        splitScreenMode: true,
        child: BlocBuilder<LanguageBloc, LanguageState>(
          buildWhen: (c, n) => c.selectedLanguage != n.selectedLanguage,
          builder: (context, state) => MaterialApp.router(
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: Locale(state.selectedLanguage!.name!),
            supportedLocales:
                state.supportedLanguages!.map((e) => Locale(e.name!)),
            debugShowCheckedModeBanner: false,
            title: 'Currency Converter',
            theme: ThemeData(),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        ),
      ),
    );
  }
}
