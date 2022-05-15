import 'package:currency_converter/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

void main() async {
  await dotenv.load(fileName: "assets/.env");
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);
  runApp(AppWidget());
}
