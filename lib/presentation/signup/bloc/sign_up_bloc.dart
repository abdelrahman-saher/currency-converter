import 'package:bloc/bloc.dart';
import 'package:currency_converter/domain/sign_up/usecases/signup_with_google.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/sign_up/failures.dart';
import '../../../domain/core/value_object/email.dart';
import '../../../domain/core/value_object/name.dart';
import '../../../domain/core/value_object/password.dart';
import '../../../domain/sign_up/entities/user.dart';
import '../../../domain/sign_up/usecases/create_user_with_email_and_password.dart';
import '../../../domain/sign_up/usecases/signup_with_facebook.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final CreateUserWithEmailAndPassword _createUserWithEmailAndPassword;
  final SignupWithFacebookUseCase _signupWithFacebookUseCase;
  final SignupWithGoogleUseCase _signupWithGoogleUseCase;
  SignUpBloc(this._createUserWithEmailAndPassword,
      this._signupWithFacebookUseCase, this._signupWithGoogleUseCase)
      : super(SignUpState.initial()) {
    on<SignUpEvent>(
      (event, emit) async {
        if (event is ChangeEmail) {
          emit(
            state.copyWith(
              emailVO: EmailVO(event.emailInput!, context: event.context),
              result: none(),
            ),
          );
        } else if (event is ChangeUserName) {
          emit(
            state.copyWith(
              userName: NameVO(event.nameInput!, context: event.context),
              result: none(),
            ),
          );
        } else if (event is ChangePassword) {
          emit(
            state.copyWith(
              password:
                  PasswordVO(event.passwordInput!, context: event.context),
              result: none(),
            ),
          );
        } else if (event is ChangeConfirmPassword) {
          emit(
            state.copyWith(
              confirmPassword:
                  PasswordVO(event.passwordInput!, context: event.context),
              result: none(),
            ),
          );
        } else if (event is ShowPassword) {
          emit(
            state.copyWith(
              showPassword: !state.showPassword!,
              result: none(),
            ),
          );
        } else if (event is ShowConfirmPassword) {
          emit(
            state.copyWith(
              showConfirmPassword: !state.showConfirmPassword!,
              result: none(),
            ),
          );
        } else if (event is SignUpWithEmailAndPassword) {
          bool? isValid = state.password! == state.confirmPassword! &&
              state.emailVO!.isValid &&
              state.userName!.isValid &&
              state.password!.isValid;
          Either<SignupFailures, Unit>? result;
          if (isValid) {
            emit(
              state.copyWith(
                isLoading: true,
                result: none(),
              ),
            );
            UserEnitity userEnitity = UserEnitity(
              userName: state.userName!,
              email: state.emailVO,
              password: state.password,
            );
            result = await _createUserWithEmailAndPassword(
              user: userEnitity,
            );
          }
          emit(
            state.copyWith(
              showErrorMessages: true,
              result: optionOf(result),
              isLoading: false,
            ),
          );
        } else if (event is SignUpWithFacebook) {
          Either<SignupFailures, Unit>? result;
          emit(
            state.copyWith(
              isLoading: true,
              result: none(),
            ),
          );
          result = await _signupWithFacebookUseCase();
          emit(
            state.copyWith(
              showErrorMessages: true,
              result: optionOf(result),
              isLoading: false,
            ),
          );
        } else if (event is SignUpWithGoogle) {
          Either<SignupFailures, Unit>? result;
          emit(
            state.copyWith(
              isLoading: true,
              result: none(),
            ),
          );
          result = await _signupWithGoogleUseCase();
          emit(
            state.copyWith(
              showErrorMessages: true,
              result: optionOf(result),
              isLoading: false,
            ),
          );
        } else if (event is SetContext) {
          emit(
            state.copyWith(
              context: event.context,
              userName: NameVO("", context: event.context),
              emailVO: EmailVO("", context: event.context),
              password: PasswordVO("", context: event.context),
              confirmPassword: PasswordVO("", context: event.context),
            ),
          );
        }
      },
    );
  }
}
