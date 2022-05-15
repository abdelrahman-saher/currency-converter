part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @required bool? isLoading,
    @required EmailVO? emailVO,
    @required PasswordVO? password,
    @required bool? showErrorMessages,
    @required Option<Either<LoginFailures, Unit>>? result,
    @required bool? showPassword,
    @required BuildContext? context,
  }) = _LoginState;
  factory LoginState.initial() => LoginState(
        isLoading: false,
        emailVO: EmailVO(""),
        password: PasswordVO(""),
        showErrorMessages: false,
        result: none(),
        showPassword: false,
      );
}
