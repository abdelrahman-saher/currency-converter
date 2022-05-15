part of 'logout_bloc.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = InitialState;
  const factory LogoutState.loading() = LoadingState;
  const factory LogoutState.done() = DoneState;
  const factory LogoutState.failure(AuthFailures failure) = FailureState;
}
