part of 'auth_user_bloc.dart';

@freezed
class AuthUserEvent with _$AuthUserEvent {
  const factory AuthUserEvent.authEvent() = AuthEvent;
}