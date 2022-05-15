// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import 'data/auth/data/local/auth_local_data_source.dart' as _i18;
import 'data/auth/data/local/auth_local_data_source_impl.dart' as _i19;
import 'data/auth/data/remote/auth_remote_data_source.dart' as _i20;
import 'data/auth/data/remote/auth_remote_data_source_impl.dart' as _i21;
import 'data/auth/models/user.dart' as _i3;
import 'data/auth/repositories/auth_repository_impl.dart' as _i23;
import 'data/core/injectable_modules.dart' as _i59;
import 'data/currency_converter/data/local/local_data_source.dart' as _i26;
import 'data/currency_converter/data/local/local_data_source_impl.dart' as _i27;
import 'data/currency_converter/data/remote/remote_data_source.dart' as _i28;
import 'data/currency_converter/data/remote/remote_data_source_impl.dart'
    as _i29;
import 'data/currency_converter/repository/repository_impl.dart' as _i31;
import 'data/language/data/local/local_data_source.dart' as _i37;
import 'data/language/data/local/local_data_source_impl.dart' as _i38;
import 'data/language/repository/repository_imp.dart' as _i40;
import 'data/login/data/local/local_data_source.dart' as _i42;
import 'data/login/data/local/local_data_source_impl.dart' as _i43;
import 'data/login/data/remote/remote_data_source.dart' as _i7;
import 'data/login/data/remote/remote_data_source_impl.dart' as _i8;
import 'data/login/repository/repository_impl.dart' as _i45;
import 'data/sign_up/data/local/signup_local_data_source.dart' as _i10;
import 'data/sign_up/data/local/signup_local_data_source_impl.dart' as _i11;
import 'data/sign_up/data/remote/signup_remote_data_source.dart' as _i12;
import 'data/sign_up/data/remote/signup_remote_data_sourece_impl.dart' as _i13;
import 'data/sign_up/repositories/signup_repository_impl.dart' as _i15;
import 'domain/auth/repositories/auth_repository.dart' as _i22;
import 'domain/auth/usecases/auth_user.dart' as _i24;
import 'domain/auth/usecases/log_out.dart' as _i41;
import 'domain/currency_converter/repository/repository.dart' as _i30;
import 'domain/currency_converter/usecases/change_converted_currencies.dart'
    as _i53;
import 'domain/currency_converter/usecases/change_selected_currency.dart'
    as _i54;
import 'domain/currency_converter/usecases/get_converted_currencies.dart'
    as _i32;
import 'domain/currency_converter/usecases/get_rates.dart' as _i33;
import 'domain/currency_converter/usecases/get_selected_currency.dart' as _i34;
import 'domain/currency_converter/usecases/get_single_rate.dart' as _i35;
import 'domain/currency_converter/usecases/get_supported_currencies.dart'
    as _i36;
import 'domain/language/repositories/language_repository.dart' as _i39;
import 'domain/language/usecases/get_selected_language.dart' as _i56;
import 'domain/language/usecases/select_language.dart' as _i50;
import 'domain/login/repositories/login_repository.dart' as _i44;
import 'domain/login/usecases/login_user_with_email_and_password.dart' as _i46;
import 'domain/login/usecases/login_with_facebook.dart' as _i47;
import 'domain/login/usecases/login_with_google.dart' as _i48;
import 'domain/sign_up/repositories/signup_repository.dart' as _i14;
import 'domain/sign_up/usecases/create_user_with_email_and_password.dart'
    as _i25;
import 'domain/sign_up/usecases/signup_with_facebook.dart' as _i16;
import 'domain/sign_up/usecases/signup_with_google.dart' as _i17;
import 'presentation/auth/bloc/authenticate/auth_user_bloc.dart' as _i52;
import 'presentation/auth/bloc/logout/logout_bloc.dart' as _i49;
import 'presentation/currency_converter/bloc/main/currency_converter_bloc.dart'
    as _i55;
import 'presentation/language/bloc/language_bloc.dart' as _i57;
import 'presentation/login/bloc/bloc/login_bloc.dart' as _i58;
import 'presentation/signup/bloc/sign_up_bloc.dart'
    as _i51; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.AuthUserSingleton>(
      () => _i3.AuthUserSingleton(jwt: get<String>(), name: get<String>()));
  gh.singleton<_i4.Dio>(injectableModule.dio);
  gh.lazySingleton<_i5.FacebookAuth>(() => injectableModule.facebookAuth);
  gh.lazySingleton<_i6.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.factory<_i7.LoginRemoteDataSource>(
      () => _i8.LoginRemoteDataSourceImpl(get<_i4.Dio>()));
  await gh.factoryAsync<_i9.SharedPreferences>(() => injectableModule.prefs,
      preResolve: true);
  gh.factory<_i10.SignupLocalDataSource>(
      () => _i11.SignupLocalDataSourceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i12.SignupRemoteDataSource>(
      () => _i13.SignupRemoteDataSourceImpl(get<_i4.Dio>()));
  gh.factory<_i14.SignupRepository>(() => _i15.SignupRepositoryImpl(
      get<_i12.SignupRemoteDataSource>(),
      get<_i10.SignupLocalDataSource>(),
      get<_i6.GoogleSignIn>(),
      get<_i5.FacebookAuth>()));
  gh.factory<_i16.SignupWithFacebookUseCase>(
      () => _i16.SignupWithFacebookUseCase(get<_i14.SignupRepository>()));
  gh.factory<_i17.SignupWithGoogleUseCase>(
      () => _i17.SignupWithGoogleUseCase(get<_i14.SignupRepository>()));
  gh.factory<_i18.AuthLocalDataSource>(
      () => _i19.AuthLocalDataSourceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i20.AuthRemoteDataSource>(
      () => _i21.AuthRemoteDataSourceImpl(get<_i4.Dio>()));
  gh.factory<_i22.AuthRepository>(
      () => _i23.AuthRepositoryImpl(get<_i18.AuthLocalDataSource>()));
  gh.factory<_i24.AuthUserUseCase>(
      () => _i24.AuthUserUseCase(get<_i22.AuthRepository>()));
  gh.factory<_i25.CreateUserWithEmailAndPassword>(
      () => _i25.CreateUserWithEmailAndPassword(get<_i14.SignupRepository>()));
  gh.lazySingleton<_i26.CurrencyConverterLocalDataSource>(() =>
      _i27.CurrencyConverterLocalDataSourceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i28.CurrencyConverterRemoteDataSource>(
      () => _i29.CurrencyConverterRemoteDataSourceImpl(get<_i4.Dio>()));
  gh.factory<_i30.CurrencyConverterRepository>(() =>
      _i31.CurrencyConverterRepositoryImpl(
          get<_i26.CurrencyConverterLocalDataSource>(),
          get<_i28.CurrencyConverterRemoteDataSource>()));
  gh.factory<_i32.GetConvertedCurrenciesUseCase>(() =>
      _i32.GetConvertedCurrenciesUseCase(
          get<_i30.CurrencyConverterRepository>()));
  gh.factory<_i33.GetRatesUseCase>(
      () => _i33.GetRatesUseCase(get<_i30.CurrencyConverterRepository>()));
  gh.factory<_i34.GetSelectedCurrencyUseCase>(() =>
      _i34.GetSelectedCurrencyUseCase(get<_i30.CurrencyConverterRepository>()));
  gh.factory<_i35.GetSingleRateUseCase>(
      () => _i35.GetSingleRateUseCase(get<_i30.CurrencyConverterRepository>()));
  gh.factory<_i36.GetSupportedCurrenciesUseCase>(() =>
      _i36.GetSupportedCurrenciesUseCase(
          get<_i30.CurrencyConverterRepository>()));
  gh.lazySingleton<_i37.LanguageLocalDataSource>(
      () => _i38.LanguageLocalDataSourceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i39.LanguageRepository>(
      () => _i40.LanguageRepositoryImpl(get<_i37.LanguageLocalDataSource>()));
  gh.factory<_i41.LogOutUseCase>(
      () => _i41.LogOutUseCase(get<_i22.AuthRepository>()));
  gh.factory<_i42.LoginLocalDataSource>(
      () => _i43.LoginLocalDataSourceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i44.LoginRepository>(() => _i45.LoginRepositoryImpl(
      get<_i7.LoginRemoteDataSource>(),
      get<_i42.LoginLocalDataSource>(),
      get<_i6.GoogleSignIn>(),
      get<_i5.FacebookAuth>()));
  gh.factory<_i46.LoginWithEmailAndPasswordUseCase>(
      () => _i46.LoginWithEmailAndPasswordUseCase(get<_i44.LoginRepository>()));
  gh.factory<_i47.LoginWithFacebookUseCase>(
      () => _i47.LoginWithFacebookUseCase(get<_i44.LoginRepository>()));
  gh.factory<_i48.LoginWithGoogleUseCase>(
      () => _i48.LoginWithGoogleUseCase(get<_i44.LoginRepository>()));
  gh.factory<_i49.LogoutBloc>(() => _i49.LogoutBloc(get<_i41.LogOutUseCase>()));
  gh.factory<_i50.SelectLanguageUseCase>(
      () => _i50.SelectLanguageUseCase(get<_i39.LanguageRepository>()));
  gh.factory<_i51.SignUpBloc>(() => _i51.SignUpBloc(
      get<_i25.CreateUserWithEmailAndPassword>(),
      get<_i16.SignupWithFacebookUseCase>(),
      get<_i17.SignupWithGoogleUseCase>()));
  gh.factory<_i52.AuthUserBloc>(
      () => _i52.AuthUserBloc(get<_i24.AuthUserUseCase>()));
  gh.factory<_i53.ChangeConvertedCurrenciesUseCase>(() =>
      _i53.ChangeConvertedCurrenciesUseCase(
          get<_i30.CurrencyConverterRepository>()));
  gh.factory<_i54.ChangeSelectedCurrencyUseCase>(() =>
      _i54.ChangeSelectedCurrencyUseCase(
          get<_i30.CurrencyConverterRepository>()));
  gh.factory<_i55.CurrencyConverterBloc>(() => _i55.CurrencyConverterBloc(
      get<_i36.GetSupportedCurrenciesUseCase>(),
      get<_i34.GetSelectedCurrencyUseCase>(),
      get<_i54.ChangeSelectedCurrencyUseCase>(),
      get<_i32.GetConvertedCurrenciesUseCase>(),
      get<_i53.ChangeConvertedCurrenciesUseCase>(),
      get<_i33.GetRatesUseCase>(),
      get<_i35.GetSingleRateUseCase>()));
  gh.factory<_i56.GetSelectedLanguageUseCase>(
      () => _i56.GetSelectedLanguageUseCase(get<_i39.LanguageRepository>()));
  gh.factory<_i57.LanguageBloc>(() => _i57.LanguageBloc(
      get<_i56.GetSelectedLanguageUseCase>(),
      get<_i50.SelectLanguageUseCase>()));
  gh.factory<_i58.LoginBloc>(() => _i58.LoginBloc(
      get<_i46.LoginWithEmailAndPasswordUseCase>(),
      get<_i47.LoginWithFacebookUseCase>(),
      get<_i48.LoginWithGoogleUseCase>()));
  return get;
}

class _$InjectableModule extends _i59.InjectableModule {}
