part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @required bool? isLoading,
    @required NameVO? userName,
    @required EmailVO? emailVO,
    @required PasswordVO? password,
    @required PasswordVO? confirmPassword,
    @required bool? showErrorMessages,
    @required Option<Either<SignupFailures, Unit>>? result,
    @required bool? showPassword,
    @required bool? showConfirmPassword,
    @required BuildContext? context,
  }) = _SignUpState;
  factory SignUpState.initial() => SignUpState(
        isLoading: false,
        userName: NameVO(""),
        emailVO: EmailVO(""),
        password: PasswordVO(""),
        confirmPassword: PasswordVO(""),
        showErrorMessages: false,
        result: none(),
        showPassword: false,
        showConfirmPassword: false,
      );
}
