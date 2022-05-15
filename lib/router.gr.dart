// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import 'presentation/auth/screens/splash_screen.dart' as _i1;
import 'presentation/home/screens/home_screen.dart' as _i5;
import 'presentation/login/screens/main.dart' as _i4;
import 'presentation/main_screen.dart' as _i2;
import 'presentation/signup/screens/main.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    MainScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.MainScreen());
    },
    SignUpScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginScreen());
    },
    HomeMainScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeMainScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i6.RouteConfig(MainScreenRoute.name, path: '/main-screen'),
        _i6.RouteConfig(SignUpScreenRoute.name, path: '/sign-up-screen'),
        _i6.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i6.RouteConfig(HomeMainScreenRoute.name, path: '/home-main-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.MainScreen]
class MainScreenRoute extends _i6.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '/main-screen');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpScreenRoute extends _i6.PageRouteInfo<void> {
  const SignUpScreenRoute()
      : super(SignUpScreenRoute.name, path: '/sign-up-screen');

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreenRoute extends _i6.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i5.HomeMainScreen]
class HomeMainScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeMainScreenRoute()
      : super(HomeMainScreenRoute.name, path: '/home-main-screen');

  static const String name = 'HomeMainScreenRoute';
}
