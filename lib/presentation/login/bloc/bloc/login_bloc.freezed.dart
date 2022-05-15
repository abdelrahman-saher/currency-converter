// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailInput) changeEmail,
    required TResult Function(String? passwordInput) changePassword,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithEmailAndPassword,
    required TResult Function() showPassword,
    required TResult Function(BuildContext context) setContext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(SetContext value) setContext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$ChangeEmailCopyWith<$Res> {
  factory _$$ChangeEmailCopyWith(
          _$ChangeEmail value, $Res Function(_$ChangeEmail) then) =
      __$$ChangeEmailCopyWithImpl<$Res>;
  $Res call({String? emailInput});
}

/// @nodoc
class __$$ChangeEmailCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$ChangeEmailCopyWith<$Res> {
  __$$ChangeEmailCopyWithImpl(
      _$ChangeEmail _value, $Res Function(_$ChangeEmail) _then)
      : super(_value, (v) => _then(v as _$ChangeEmail));

  @override
  _$ChangeEmail get _value => super._value as _$ChangeEmail;

  @override
  $Res call({
    Object? emailInput = freezed,
  }) {
    return _then(_$ChangeEmail(
      emailInput == freezed
          ? _value.emailInput
          : emailInput // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeEmail implements ChangeEmail {
  const _$ChangeEmail(this.emailInput);

  @override
  final String? emailInput;

  @override
  String toString() {
    return 'LoginEvent.changeEmail(emailInput: $emailInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEmail &&
            const DeepCollectionEquality()
                .equals(other.emailInput, emailInput));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailInput));

  @JsonKey(ignore: true)
  @override
  _$$ChangeEmailCopyWith<_$ChangeEmail> get copyWith =>
      __$$ChangeEmailCopyWithImpl<_$ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailInput) changeEmail,
    required TResult Function(String? passwordInput) changePassword,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithEmailAndPassword,
    required TResult Function() showPassword,
    required TResult Function(BuildContext context) setContext,
  }) {
    return changeEmail(emailInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
  }) {
    return changeEmail?.call(emailInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(emailInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(SetContext value) setContext,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class ChangeEmail implements LoginEvent {
  const factory ChangeEmail(final String? emailInput) = _$ChangeEmail;

  String? get emailInput => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeEmailCopyWith<_$ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordCopyWith<$Res> {
  factory _$$ChangePasswordCopyWith(
          _$ChangePassword value, $Res Function(_$ChangePassword) then) =
      __$$ChangePasswordCopyWithImpl<$Res>;
  $Res call({String? passwordInput});
}

/// @nodoc
class __$$ChangePasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$ChangePasswordCopyWith<$Res> {
  __$$ChangePasswordCopyWithImpl(
      _$ChangePassword _value, $Res Function(_$ChangePassword) _then)
      : super(_value, (v) => _then(v as _$ChangePassword));

  @override
  _$ChangePassword get _value => super._value as _$ChangePassword;

  @override
  $Res call({
    Object? passwordInput = freezed,
  }) {
    return _then(_$ChangePassword(
      passwordInput == freezed
          ? _value.passwordInput
          : passwordInput // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangePassword implements ChangePassword {
  const _$ChangePassword(this.passwordInput);

  @override
  final String? passwordInput;

  @override
  String toString() {
    return 'LoginEvent.changePassword(passwordInput: $passwordInput)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePassword &&
            const DeepCollectionEquality()
                .equals(other.passwordInput, passwordInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordInput));

  @JsonKey(ignore: true)
  @override
  _$$ChangePasswordCopyWith<_$ChangePassword> get copyWith =>
      __$$ChangePasswordCopyWithImpl<_$ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailInput) changeEmail,
    required TResult Function(String? passwordInput) changePassword,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithEmailAndPassword,
    required TResult Function() showPassword,
    required TResult Function(BuildContext context) setContext,
  }) {
    return changePassword(passwordInput);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
  }) {
    return changePassword?.call(passwordInput);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(passwordInput);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(SetContext value) setContext,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePassword implements LoginEvent {
  const factory ChangePassword(final String? passwordInput) = _$ChangePassword;

  String? get passwordInput => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePasswordCopyWith<_$ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithGoogleCopyWith<$Res> {
  factory _$$LoginWithGoogleCopyWith(
          _$LoginWithGoogle value, $Res Function(_$LoginWithGoogle) then) =
      __$$LoginWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithGoogleCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginWithGoogleCopyWith<$Res> {
  __$$LoginWithGoogleCopyWithImpl(
      _$LoginWithGoogle _value, $Res Function(_$LoginWithGoogle) _then)
      : super(_value, (v) => _then(v as _$LoginWithGoogle));

  @override
  _$LoginWithGoogle get _value => super._value as _$LoginWithGoogle;
}

/// @nodoc

class _$LoginWithGoogle implements LoginWithGoogle {
  const _$LoginWithGoogle();

  @override
  String toString() {
    return 'LoginEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailInput) changeEmail,
    required TResult Function(String? passwordInput) changePassword,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithEmailAndPassword,
    required TResult Function() showPassword,
    required TResult Function(BuildContext context) setContext,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
  }) {
    return loginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(SetContext value) setContext,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class LoginWithGoogle implements LoginEvent {
  const factory LoginWithGoogle() = _$LoginWithGoogle;
}

/// @nodoc
abstract class _$$LoginWithFacebookCopyWith<$Res> {
  factory _$$LoginWithFacebookCopyWith(
          _$LoginWithFacebook value, $Res Function(_$LoginWithFacebook) then) =
      __$$LoginWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithFacebookCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginWithFacebookCopyWith<$Res> {
  __$$LoginWithFacebookCopyWithImpl(
      _$LoginWithFacebook _value, $Res Function(_$LoginWithFacebook) _then)
      : super(_value, (v) => _then(v as _$LoginWithFacebook));

  @override
  _$LoginWithFacebook get _value => super._value as _$LoginWithFacebook;
}

/// @nodoc

class _$LoginWithFacebook implements LoginWithFacebook {
  const _$LoginWithFacebook();

  @override
  String toString() {
    return 'LoginEvent.loginWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailInput) changeEmail,
    required TResult Function(String? passwordInput) changePassword,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithEmailAndPassword,
    required TResult Function() showPassword,
    required TResult Function(BuildContext context) setContext,
  }) {
    return loginWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
  }) {
    return loginWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(SetContext value) setContext,
  }) {
    return loginWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
  }) {
    return loginWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(this);
    }
    return orElse();
  }
}

abstract class LoginWithFacebook implements LoginEvent {
  const factory LoginWithFacebook() = _$LoginWithFacebook;
}

/// @nodoc
abstract class _$$LoginWithEmailAndPasswordCopyWith<$Res> {
  factory _$$LoginWithEmailAndPasswordCopyWith(
          _$LoginWithEmailAndPassword value,
          $Res Function(_$LoginWithEmailAndPassword) then) =
      __$$LoginWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginWithEmailAndPasswordCopyWith<$Res> {
  __$$LoginWithEmailAndPasswordCopyWithImpl(_$LoginWithEmailAndPassword _value,
      $Res Function(_$LoginWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as _$LoginWithEmailAndPassword));

  @override
  _$LoginWithEmailAndPassword get _value =>
      super._value as _$LoginWithEmailAndPassword;
}

/// @nodoc

class _$LoginWithEmailAndPassword implements LoginWithEmailAndPassword {
  const _$LoginWithEmailAndPassword();

  @override
  String toString() {
    return 'LoginEvent.loginWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailInput) changeEmail,
    required TResult Function(String? passwordInput) changePassword,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithEmailAndPassword,
    required TResult Function() showPassword,
    required TResult Function(BuildContext context) setContext,
  }) {
    return loginWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
  }) {
    return loginWithEmailAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(SetContext value) setContext,
  }) {
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
  }) {
    return loginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPassword implements LoginEvent {
  const factory LoginWithEmailAndPassword() = _$LoginWithEmailAndPassword;
}

/// @nodoc
abstract class _$$ShowPasswordCopyWith<$Res> {
  factory _$$ShowPasswordCopyWith(
          _$ShowPassword value, $Res Function(_$ShowPassword) then) =
      __$$ShowPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPasswordCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$ShowPasswordCopyWith<$Res> {
  __$$ShowPasswordCopyWithImpl(
      _$ShowPassword _value, $Res Function(_$ShowPassword) _then)
      : super(_value, (v) => _then(v as _$ShowPassword));

  @override
  _$ShowPassword get _value => super._value as _$ShowPassword;
}

/// @nodoc

class _$ShowPassword implements ShowPassword {
  const _$ShowPassword();

  @override
  String toString() {
    return 'LoginEvent.showPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailInput) changeEmail,
    required TResult Function(String? passwordInput) changePassword,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithEmailAndPassword,
    required TResult Function() showPassword,
    required TResult Function(BuildContext context) setContext,
  }) {
    return showPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
  }) {
    return showPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(SetContext value) setContext,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements LoginEvent {
  const factory ShowPassword() = _$ShowPassword;
}

/// @nodoc
abstract class _$$SetContextCopyWith<$Res> {
  factory _$$SetContextCopyWith(
          _$SetContext value, $Res Function(_$SetContext) then) =
      __$$SetContextCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SetContextCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$SetContextCopyWith<$Res> {
  __$$SetContextCopyWithImpl(
      _$SetContext _value, $Res Function(_$SetContext) _then)
      : super(_value, (v) => _then(v as _$SetContext));

  @override
  _$SetContext get _value => super._value as _$SetContext;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_$SetContext(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SetContext implements SetContext {
  const _$SetContext(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LoginEvent.setContext(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetContext &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$SetContextCopyWith<_$SetContext> get copyWith =>
      __$$SetContextCopyWithImpl<_$SetContext>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailInput) changeEmail,
    required TResult Function(String? passwordInput) changePassword,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithEmailAndPassword,
    required TResult Function() showPassword,
    required TResult Function(BuildContext context) setContext,
  }) {
    return setContext(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
  }) {
    return setContext?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailInput)? changeEmail,
    TResult Function(String? passwordInput)? changePassword,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithEmailAndPassword,
    TResult Function()? showPassword,
    TResult Function(BuildContext context)? setContext,
    required TResult orElse(),
  }) {
    if (setContext != null) {
      return setContext(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEmail value) changeEmail,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(LoginWithEmailAndPassword value)
        loginWithEmailAndPassword,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(SetContext value) setContext,
  }) {
    return setContext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
  }) {
    return setContext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEmail value)? changeEmail,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(LoginWithEmailAndPassword value)?
        loginWithEmailAndPassword,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(SetContext value)? setContext,
    required TResult orElse(),
  }) {
    if (setContext != null) {
      return setContext(this);
    }
    return orElse();
  }
}

abstract class SetContext implements LoginEvent {
  const factory SetContext(final BuildContext context) = _$SetContext;

  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SetContextCopyWith<_$SetContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool? get isLoading => throw _privateConstructorUsedError;
  EmailVO? get emailVO => throw _privateConstructorUsedError;
  PasswordVO? get password => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<LoginFailures, Unit>>? get result =>
      throw _privateConstructorUsedError;
  bool? get showPassword => throw _privateConstructorUsedError;
  BuildContext? get context => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isLoading,
      EmailVO? emailVO,
      PasswordVO? password,
      bool? showErrorMessages,
      Option<Either<LoginFailures, Unit>>? result,
      bool? showPassword,
      BuildContext? context});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? emailVO = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? result = freezed,
    Object? showPassword = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailVO: emailVO == freezed
          ? _value.emailVO
          : emailVO // ignore: cast_nullable_to_non_nullable
              as EmailVO?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordVO?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoginFailures, Unit>>?,
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isLoading,
      EmailVO? emailVO,
      PasswordVO? password,
      bool? showErrorMessages,
      Option<Either<LoginFailures, Unit>>? result,
      bool? showPassword,
      BuildContext? context});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? emailVO = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? result = freezed,
    Object? showPassword = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_LoginState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailVO: emailVO == freezed
          ? _value.emailVO
          : emailVO // ignore: cast_nullable_to_non_nullable
              as EmailVO?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordVO?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoginFailures, Unit>>?,
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.isLoading,
      this.emailVO,
      this.password,
      this.showErrorMessages,
      this.result,
      this.showPassword,
      this.context});

  @override
  final bool? isLoading;
  @override
  final EmailVO? emailVO;
  @override
  final PasswordVO? password;
  @override
  final bool? showErrorMessages;
  @override
  final Option<Either<LoginFailures, Unit>>? result;
  @override
  final bool? showPassword;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, emailVO: $emailVO, password: $password, showErrorMessages: $showErrorMessages, result: $result, showPassword: $showPassword, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.emailVO, emailVO) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality()
                .equals(other.showPassword, showPassword) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(emailVO),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(showPassword),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final bool? isLoading,
      final EmailVO? emailVO,
      final PasswordVO? password,
      final bool? showErrorMessages,
      final Option<Either<LoginFailures, Unit>>? result,
      final bool? showPassword,
      final BuildContext? context}) = _$_LoginState;

  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  EmailVO? get emailVO => throw _privateConstructorUsedError;
  @override
  PasswordVO? get password => throw _privateConstructorUsedError;
  @override
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<LoginFailures, Unit>>? get result =>
      throw _privateConstructorUsedError;
  @override
  bool? get showPassword => throw _privateConstructorUsedError;
  @override
  BuildContext? get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
