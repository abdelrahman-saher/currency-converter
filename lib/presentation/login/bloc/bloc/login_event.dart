part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeEmail(
      String? emailInput) = ChangeEmail;
  const factory LoginEvent.changePassword(
      String? passwordInput) = ChangePassword;
  const factory LoginEvent.loginWithGoogle() = LoginWithGoogle;
  const factory LoginEvent.loginWithFacebook() = LoginWithFacebook;
  const factory LoginEvent.loginWithEmailAndPassword() =
      LoginWithEmailAndPassword;
  const factory LoginEvent.showPassword() = ShowPassword;
  const factory LoginEvent.setContext(BuildContext context) = SetContext;
}
