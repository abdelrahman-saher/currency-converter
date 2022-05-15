// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEvent value) authEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEvent value)? authEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEvent value)? authEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserEventCopyWith<$Res> {
  factory $AuthUserEventCopyWith(
          AuthUserEvent value, $Res Function(AuthUserEvent) then) =
      _$AuthUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthUserEventCopyWithImpl<$Res>
    implements $AuthUserEventCopyWith<$Res> {
  _$AuthUserEventCopyWithImpl(this._value, this._then);

  final AuthUserEvent _value;
  // ignore: unused_field
  final $Res Function(AuthUserEvent) _then;
}

/// @nodoc
abstract class _$$AuthEventCopyWith<$Res> {
  factory _$$AuthEventCopyWith(
          _$AuthEvent value, $Res Function(_$AuthEvent) then) =
      __$$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventCopyWithImpl<$Res> extends _$AuthUserEventCopyWithImpl<$Res>
    implements _$$AuthEventCopyWith<$Res> {
  __$$AuthEventCopyWithImpl(
      _$AuthEvent _value, $Res Function(_$AuthEvent) _then)
      : super(_value, (v) => _then(v as _$AuthEvent));

  @override
  _$AuthEvent get _value => super._value as _$AuthEvent;
}

/// @nodoc

class _$AuthEvent implements AuthEvent {
  const _$AuthEvent();

  @override
  String toString() {
    return 'AuthUserEvent.authEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authEvent,
  }) {
    return authEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authEvent,
  }) {
    return authEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authEvent,
    required TResult orElse(),
  }) {
    if (authEvent != null) {
      return authEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEvent value) authEvent,
  }) {
    return authEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEvent value)? authEvent,
  }) {
    return authEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEvent value)? authEvent,
    required TResult orElse(),
  }) {
    if (authEvent != null) {
      return authEvent(this);
    }
    return orElse();
  }
}

abstract class AuthEvent implements AuthUserEvent {
  const factory AuthEvent() = _$AuthEvent;
}

/// @nodoc
mixin _$AuthUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthedState,
    required TResult Function() authedState,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthedState,
    TResult Function()? authedState,
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthedState,
    TResult Function()? authedState,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthedState value) notAuthedState,
    required TResult Function(AuthedState value) authedState,
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotAuthedState value)? notAuthedState,
    TResult Function(AuthedState value)? authedState,
    TResult Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthedState value)? notAuthedState,
    TResult Function(AuthedState value)? authedState,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserStateCopyWith<$Res> {
  factory $AuthUserStateCopyWith(
          AuthUserState value, $Res Function(AuthUserState) then) =
      _$AuthUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthUserStateCopyWithImpl<$Res>
    implements $AuthUserStateCopyWith<$Res> {
  _$AuthUserStateCopyWithImpl(this._value, this._then);

  final AuthUserState _value;
  // ignore: unused_field
  final $Res Function(AuthUserState) _then;
}

/// @nodoc
abstract class _$$NotAuthedStateCopyWith<$Res> {
  factory _$$NotAuthedStateCopyWith(
          _$NotAuthedState value, $Res Function(_$NotAuthedState) then) =
      __$$NotAuthedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthedStateCopyWithImpl<$Res>
    extends _$AuthUserStateCopyWithImpl<$Res>
    implements _$$NotAuthedStateCopyWith<$Res> {
  __$$NotAuthedStateCopyWithImpl(
      _$NotAuthedState _value, $Res Function(_$NotAuthedState) _then)
      : super(_value, (v) => _then(v as _$NotAuthedState));

  @override
  _$NotAuthedState get _value => super._value as _$NotAuthedState;
}

/// @nodoc

class _$NotAuthedState implements NotAuthedState {
  const _$NotAuthedState();

  @override
  String toString() {
    return 'AuthUserState.notAuthedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthedState,
    required TResult Function() authedState,
    required TResult Function() initial,
  }) {
    return notAuthedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthedState,
    TResult Function()? authedState,
    TResult Function()? initial,
  }) {
    return notAuthedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthedState,
    TResult Function()? authedState,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (notAuthedState != null) {
      return notAuthedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthedState value) notAuthedState,
    required TResult Function(AuthedState value) authedState,
    required TResult Function(Initial value) initial,
  }) {
    return notAuthedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotAuthedState value)? notAuthedState,
    TResult Function(AuthedState value)? authedState,
    TResult Function(Initial value)? initial,
  }) {
    return notAuthedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthedState value)? notAuthedState,
    TResult Function(AuthedState value)? authedState,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (notAuthedState != null) {
      return notAuthedState(this);
    }
    return orElse();
  }
}

abstract class NotAuthedState implements AuthUserState {
  const factory NotAuthedState() = _$NotAuthedState;
}

/// @nodoc
abstract class _$$AuthedStateCopyWith<$Res> {
  factory _$$AuthedStateCopyWith(
          _$AuthedState value, $Res Function(_$AuthedState) then) =
      __$$AuthedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthedStateCopyWithImpl<$Res>
    extends _$AuthUserStateCopyWithImpl<$Res>
    implements _$$AuthedStateCopyWith<$Res> {
  __$$AuthedStateCopyWithImpl(
      _$AuthedState _value, $Res Function(_$AuthedState) _then)
      : super(_value, (v) => _then(v as _$AuthedState));

  @override
  _$AuthedState get _value => super._value as _$AuthedState;
}

/// @nodoc

class _$AuthedState implements AuthedState {
  const _$AuthedState();

  @override
  String toString() {
    return 'AuthUserState.authedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthedState,
    required TResult Function() authedState,
    required TResult Function() initial,
  }) {
    return authedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthedState,
    TResult Function()? authedState,
    TResult Function()? initial,
  }) {
    return authedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthedState,
    TResult Function()? authedState,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (authedState != null) {
      return authedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthedState value) notAuthedState,
    required TResult Function(AuthedState value) authedState,
    required TResult Function(Initial value) initial,
  }) {
    return authedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotAuthedState value)? notAuthedState,
    TResult Function(AuthedState value)? authedState,
    TResult Function(Initial value)? initial,
  }) {
    return authedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthedState value)? notAuthedState,
    TResult Function(AuthedState value)? authedState,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (authedState != null) {
      return authedState(this);
    }
    return orElse();
  }
}

abstract class AuthedState implements AuthUserState {
  const factory AuthedState() = _$AuthedState;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$AuthUserStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthUserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthedState,
    required TResult Function() authedState,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthedState,
    TResult Function()? authedState,
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthedState,
    TResult Function()? authedState,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotAuthedState value) notAuthedState,
    required TResult Function(AuthedState value) authedState,
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotAuthedState value)? notAuthedState,
    TResult Function(AuthedState value)? authedState,
    TResult Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotAuthedState value)? notAuthedState,
    TResult Function(AuthedState value)? authedState,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthUserState {
  const factory Initial() = _$Initial;
}
