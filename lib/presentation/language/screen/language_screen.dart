import 'package:auto_route/auto_route.dart';
import 'package:currency_converter/domain/language/entities/language.dart';
import 'package:currency_converter/presentation/language/bloc/language_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/fonts.dart';

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ), //this right here
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            padding: EdgeInsets.all(15.r),
            height: 200.h,
            width: 215.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.change_language_title,
                  style: MyFonts.heading3,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                DropdownButtonFormField<LanguageEntity>(
                  items: BlocProvider.of<LanguageBloc>(context)
                      .state
                      .supportedLanguages!
                      .map(
                        (e) => DropdownMenuItem<LanguageEntity>(
                          child: Text(e.fullName),
                          value: e,
                          
                        ),
                      )
                      .toList(),
                  onChanged: (language) {
                    BlocProvider.of<LanguageBloc>(context).add(
                      LanguageEvent.changeSelectedLanguage(
                          languageEntity: language),
                    );
                    context.router.pop();
                  },
                  value: BlocProvider.of<LanguageBloc>(context)
                      .state
                      .selectedLanguage,
                ),
              ],
            ),
          ),
        ));
  }
}
