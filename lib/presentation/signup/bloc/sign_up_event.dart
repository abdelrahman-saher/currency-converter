part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.showPassword() = ShowPassword;
  const factory SignUpEvent.showConfirmPassword() = ShowConfirmPassword;
  const factory SignUpEvent.changeEmail(
      String? emailInput, BuildContext context) = ChangeEmail;
  const factory SignUpEvent.changePassword(
      String? passwordInput, BuildContext context) = ChangePassword;
  const factory SignUpEvent.changeConfirmPassword(
      String? passwordInput, BuildContext context) = ChangeConfirmPassword;
  const factory SignUpEvent.changeUserName(
      String? nameInput, BuildContext context) = ChangeUserName;
  const factory SignUpEvent.signUpWithGoogle() = SignUpWithGoogle;
  const factory SignUpEvent.signUpWithFacebook() = SignUpWithFacebook;
  const factory SignUpEvent.signUpWithEmailAndPassword() =
      SignUpWithEmailAndPassword;
  const factory SignUpEvent.setContext(BuildContext context) = SetContext;
}
