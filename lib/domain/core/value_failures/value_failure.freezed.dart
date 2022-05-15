// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  String? get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) invalidPassword,
    required TResult Function(String? failedValue) invalidName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidName<T> value) invalidName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidBalance<T> value) invalidBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String? failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) invalidPassword,
    required TResult Function(String? failedValue) invalidName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidBalance,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidName<T> value) invalidName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidBalance<T> value) invalidBalance,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({final String? failedValue}) = _$InvalidEmail<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPasswordCopyWith(_$InvalidPassword<T> value,
          $Res Function(_$InvalidPassword<T>) then) =
      __$$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidPasswordCopyWith<T, $Res> {
  __$$InvalidPasswordCopyWithImpl(
      _$InvalidPassword<T> _value, $Res Function(_$InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidPassword<T>));

  @override
  _$InvalidPassword<T> get _value => super._value as _$InvalidPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      __$$InvalidPasswordCopyWithImpl<T, _$InvalidPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) invalidPassword,
    required TResult Function(String? failedValue) invalidName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidBalance,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
  }) {
    return invalidPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidName<T> value) invalidName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidBalance<T> value) invalidBalance,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({final String? failedValue}) =
      _$InvalidPassword<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidNameCopyWith(
          _$InvalidName<T> value, $Res Function(_$InvalidName<T>) then) =
      __$$InvalidNameCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$InvalidNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidNameCopyWith<T, $Res> {
  __$$InvalidNameCopyWithImpl(
      _$InvalidName<T> _value, $Res Function(_$InvalidName<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidName<T>));

  @override
  _$InvalidName<T> get _value => super._value as _$InvalidName<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidName<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidName<T> implements InvalidName<T> {
  const _$InvalidName({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidName<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidNameCopyWith<T, _$InvalidName<T>> get copyWith =>
      __$$InvalidNameCopyWithImpl<T, _$InvalidName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) invalidPassword,
    required TResult Function(String? failedValue) invalidName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidBalance,
  }) {
    return invalidName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
  }) {
    return invalidName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidName != null) {
      return invalidName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidName<T> value) invalidName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidBalance<T> value) invalidBalance,
  }) {
    return invalidName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
  }) {
    return invalidName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidName != null) {
      return invalidName(this);
    }
    return orElse();
  }
}

abstract class InvalidName<T> implements ValueFailure<T> {
  const factory InvalidName({final String? failedValue}) = _$InvalidName<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidNameCopyWith<T, _$InvalidName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPhoneCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPhoneCopyWith(
          _$InvalidPhone<T> value, $Res Function(_$InvalidPhone<T>) then) =
      __$$InvalidPhoneCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$InvalidPhoneCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidPhoneCopyWith<T, $Res> {
  __$$InvalidPhoneCopyWithImpl(
      _$InvalidPhone<T> _value, $Res Function(_$InvalidPhone<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidPhone<T>));

  @override
  _$InvalidPhone<T> get _value => super._value as _$InvalidPhone<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidPhone<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidPhone<T> implements InvalidPhone<T> {
  const _$InvalidPhone({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhone(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPhone<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidPhoneCopyWith<T, _$InvalidPhone<T>> get copyWith =>
      __$$InvalidPhoneCopyWithImpl<T, _$InvalidPhone<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) invalidPassword,
    required TResult Function(String? failedValue) invalidName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidBalance,
  }) {
    return invalidPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
  }) {
    return invalidPhone?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidName<T> value) invalidName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidBalance<T> value) invalidBalance,
  }) {
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
  }) {
    return invalidPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class InvalidPhone<T> implements ValueFailure<T> {
  const factory InvalidPhone({final String? failedValue}) = _$InvalidPhone<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidPhoneCopyWith<T, _$InvalidPhone<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidBalanceCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidBalanceCopyWith(
          _$InvalidBalance<T> value, $Res Function(_$InvalidBalance<T>) then) =
      __$$InvalidBalanceCopyWithImpl<T, $Res>;
  @override
  $Res call({String? failedValue});
}

/// @nodoc
class __$$InvalidBalanceCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidBalanceCopyWith<T, $Res> {
  __$$InvalidBalanceCopyWithImpl(
      _$InvalidBalance<T> _value, $Res Function(_$InvalidBalance<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidBalance<T>));

  @override
  _$InvalidBalance<T> get _value => super._value as _$InvalidBalance<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidBalance<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidBalance<T> implements InvalidBalance<T> {
  const _$InvalidBalance({this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidBalance(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidBalance<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidBalanceCopyWith<T, _$InvalidBalance<T>> get copyWith =>
      __$$InvalidBalanceCopyWithImpl<T, _$InvalidBalance<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? failedValue) invalidEmail,
    required TResult Function(String? failedValue) invalidPassword,
    required TResult Function(String? failedValue) invalidName,
    required TResult Function(String? failedValue) invalidPhone,
    required TResult Function(String? failedValue) invalidBalance,
  }) {
    return invalidBalance(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
  }) {
    return invalidBalance?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? failedValue)? invalidEmail,
    TResult Function(String? failedValue)? invalidPassword,
    TResult Function(String? failedValue)? invalidName,
    TResult Function(String? failedValue)? invalidPhone,
    TResult Function(String? failedValue)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidBalance != null) {
      return invalidBalance(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidName<T> value) invalidName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidBalance<T> value) invalidBalance,
  }) {
    return invalidBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
  }) {
    return invalidBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidName<T> value)? invalidName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidBalance<T> value)? invalidBalance,
    required TResult orElse(),
  }) {
    if (invalidBalance != null) {
      return invalidBalance(this);
    }
    return orElse();
  }
}

abstract class InvalidBalance<T> implements ValueFailure<T> {
  const factory InvalidBalance({final String? failedValue}) =
      _$InvalidBalance<T>;

  @override
  String? get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidBalanceCopyWith<T, _$InvalidBalance<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
