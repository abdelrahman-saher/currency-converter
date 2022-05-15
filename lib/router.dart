import 'package:auto_route/annotations.dart';
import 'package:currency_converter/presentation/auth/screens/splash_screen.dart';
import 'package:currency_converter/presentation/home/screens/home_screen.dart';
import 'package:currency_converter/presentation/login/screens/main.dart';
import 'package:currency_converter/presentation/main_screen.dart';
import 'package:currency_converter/presentation/signup/screens/main.dart';

@MaterialAutoRouter(replaceInRouteName: "Route", routes: [
  AutoRoute(
    page: SplashScreen,
    initial: true,
  ),
  AutoRoute(
    page: MainScreen,
  ),
  AutoRoute(
    page: SignUpScreen,
  ),
  AutoRoute(
    page: LoginScreen,
  ),
  AutoRoute(
    page: HomeMainScreen,
  ),
])
class $AppRouter {}
 