import 'package:dio/dio.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(scopes: [
        'email',
      ]);
  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.instance;
  @singleton
  @lazySingleton
  Dio get dio => Dio();
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
