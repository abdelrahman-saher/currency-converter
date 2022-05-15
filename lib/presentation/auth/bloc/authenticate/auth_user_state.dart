part of 'auth_user_bloc.dart';

@freezed
class AuthUserState with _$AuthUserState {
  const factory AuthUserState.notAuthedState() = NotAuthedState;
  const factory AuthUserState.authedState() = AuthedState;
  const factory AuthUserState.initial() = Initial;
}
