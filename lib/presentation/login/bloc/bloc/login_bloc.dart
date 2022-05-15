import 'package:bloc/bloc.dart';
import 'package:currency_converter/data/login/failures.dart';
import 'package:currency_converter/data/sign_up/failures.dart';
import 'package:currency_converter/domain/core/value_object/email.dart';
import 'package:currency_converter/domain/core/value_object/password.dart';
import 'package:currency_converter/domain/login/entities/crredentials.dart';
import 'package:currency_converter/domain/login/usecases/login_with_facebook.dart';
import 'package:currency_converter/domain/login/usecases/login_with_google.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/login/usecases/login_user_with_email_and_password.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginWithEmailAndPasswordUseCase _loginWithEmailAndPasswordUseCase;
  final LoginWithFacebookUseCase _loginWithFacebookUseCase;
  final LoginWithGoogleUseCase _loginWithGoogleUseCase;
  LoginBloc(this._loginWithEmailAndPasswordUseCase,
      this._loginWithFacebookUseCase, this._loginWithGoogleUseCase)
      : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      if (event is ChangeEmail) {
        emit(
          state.copyWith(
            emailVO: EmailVO(event.emailInput!, context: state.context),
            result: none(),
          ),
        );
      } else if (event is ChangePassword) {
        emit(
          state.copyWith(
            password: PasswordVO(event.passwordInput!, context: state.context),
            result: none(),
          ),
        );
      } else if (event is LoginWithEmailAndPassword) {
        bool? isValid = state.emailVO!.isValid && state.password!.isValid;
        Either<LoginFailures, Unit>? result;
        if (isValid) {
          emit(
            state.copyWith(
              isLoading: true,
              result: none(),
            ),
          );
          CredentialsEntity credentialsEntity = CredentialsEntity(
            email: state.emailVO,
            password: state.password,
          );
          result =
              await _loginWithEmailAndPasswordUseCase(user: credentialsEntity);
        }
        emit(
          state.copyWith(
            showErrorMessages: true,
            result: optionOf(result),
            isLoading: false,
          ),
        );
      } else if (event is LoginWithFacebook) {
        Either<LoginFailures, Unit>? result;
        emit(
          state.copyWith(
            isLoading: true,
            result: none(),
          ),
        );
        result = await _loginWithFacebookUseCase();
        emit(
          state.copyWith(
            showErrorMessages: true,
            result: optionOf(result),
            isLoading: false,
          ),
        );
      } else if (event is LoginWithGoogle) {
        Either<LoginFailures, Unit>? result;
        emit(
          state.copyWith(
            isLoading: true,
            result: none(),
          ),
        );
        result = await _loginWithGoogleUseCase();
        emit(
          state.copyWith(
            showErrorMessages: true,
            result: optionOf(result),
            isLoading: false,
          ),
        );
      } else if (event is ShowPassword) {
        emit(
          state.copyWith(
            showPassword: !state.showPassword!,
            result: none(),
          ),
        );
      } else if (event is SetContext) {
        emit(
          state.copyWith(
            context: event.context,
            emailVO: EmailVO("", context: event.context),
            password: PasswordVO("", context: event.context),
          ),
        );
      }
    });
  }
}
