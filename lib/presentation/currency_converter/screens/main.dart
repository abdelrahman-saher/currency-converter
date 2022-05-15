import 'package:currency_converter/injection.dart';
import 'package:currency_converter/presentation/currency_converter/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/main/currency_converter_bloc.dart';

class CurrencyConverterMainScreen extends StatelessWidget {
  const CurrencyConverterMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurrencyConverterBloc>(
          create: (context) => getIt<CurrencyConverterBloc>()
            ..add(
              CurrencyConverterEvent.init(context),
            ),
        ),
      ],
      child: GestureDetector(
          onTap: () {
            final FocusScopeNode currentScope = FocusScope.of(context);
            if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: const CurrencyConverterMainPage()),
    );
  }
}
