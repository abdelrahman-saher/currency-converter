// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSelectedLanguage,
    required TResult Function(LanguageEntity? languageEntity)
        changeSelectedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSelectedLanguage,
    TResult Function(LanguageEntity? languageEntity)? changeSelectedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSelectedLanguage,
    TResult Function(LanguageEntity? languageEntity)? changeSelectedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSelectedLanguage value) getSelectedLanguage,
    required TResult Function(ChangeSelectedLanguage value)
        changeSelectedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSelectedLanguage value)? getSelectedLanguage,
    TResult Function(ChangeSelectedLanguage value)? changeSelectedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSelectedLanguage value)? getSelectedLanguage,
    TResult Function(ChangeSelectedLanguage value)? changeSelectedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  final LanguageEvent _value;
  // ignore: unused_field
  final $Res Function(LanguageEvent) _then;
}

/// @nodoc
abstract class _$$GetSelectedLanguageCopyWith<$Res> {
  factory _$$GetSelectedLanguageCopyWith(_$GetSelectedLanguage value,
          $Res Function(_$GetSelectedLanguage) then) =
      __$$GetSelectedLanguageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSelectedLanguageCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res>
    implements _$$GetSelectedLanguageCopyWith<$Res> {
  __$$GetSelectedLanguageCopyWithImpl(
      _$GetSelectedLanguage _value, $Res Function(_$GetSelectedLanguage) _then)
      : super(_value, (v) => _then(v as _$GetSelectedLanguage));

  @override
  _$GetSelectedLanguage get _value => super._value as _$GetSelectedLanguage;
}

/// @nodoc

class _$GetSelectedLanguage implements GetSelectedLanguage {
  const _$GetSelectedLanguage();

  @override
  String toString() {
    return 'LanguageEvent.getSelectedLanguage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSelectedLanguage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSelectedLanguage,
    required TResult Function(LanguageEntity? languageEntity)
        changeSelectedLanguage,
  }) {
    return getSelectedLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSelectedLanguage,
    TResult Function(LanguageEntity? languageEntity)? changeSelectedLanguage,
  }) {
    return getSelectedLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSelectedLanguage,
    TResult Function(LanguageEntity? languageEntity)? changeSelectedLanguage,
    required TResult orElse(),
  }) {
    if (getSelectedLanguage != null) {
      return getSelectedLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSelectedLanguage value) getSelectedLanguage,
    required TResult Function(ChangeSelectedLanguage value)
        changeSelectedLanguage,
  }) {
    return getSelectedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSelectedLanguage value)? getSelectedLanguage,
    TResult Function(ChangeSelectedLanguage value)? changeSelectedLanguage,
  }) {
    return getSelectedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSelectedLanguage value)? getSelectedLanguage,
    TResult Function(ChangeSelectedLanguage value)? changeSelectedLanguage,
    required TResult orElse(),
  }) {
    if (getSelectedLanguage != null) {
      return getSelectedLanguage(this);
    }
    return orElse();
  }
}

abstract class GetSelectedLanguage implements LanguageEvent {
  const factory GetSelectedLanguage() = _$GetSelectedLanguage;
}

/// @nodoc
abstract class _$$ChangeSelectedLanguageCopyWith<$Res> {
  factory _$$ChangeSelectedLanguageCopyWith(_$ChangeSelectedLanguage value,
          $Res Function(_$ChangeSelectedLanguage) then) =
      __$$ChangeSelectedLanguageCopyWithImpl<$Res>;
  $Res call({LanguageEntity? languageEntity});
}

/// @nodoc
class __$$ChangeSelectedLanguageCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res>
    implements _$$ChangeSelectedLanguageCopyWith<$Res> {
  __$$ChangeSelectedLanguageCopyWithImpl(_$ChangeSelectedLanguage _value,
      $Res Function(_$ChangeSelectedLanguage) _then)
      : super(_value, (v) => _then(v as _$ChangeSelectedLanguage));

  @override
  _$ChangeSelectedLanguage get _value =>
      super._value as _$ChangeSelectedLanguage;

  @override
  $Res call({
    Object? languageEntity = freezed,
  }) {
    return _then(_$ChangeSelectedLanguage(
      languageEntity: languageEntity == freezed
          ? _value.languageEntity
          : languageEntity // ignore: cast_nullable_to_non_nullable
              as LanguageEntity?,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedLanguage implements ChangeSelectedLanguage {
  const _$ChangeSelectedLanguage({this.languageEntity});

  @override
  final LanguageEntity? languageEntity;

  @override
  String toString() {
    return 'LanguageEvent.changeSelectedLanguage(languageEntity: $languageEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedLanguage &&
            const DeepCollectionEquality()
                .equals(other.languageEntity, languageEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(languageEntity));

  @JsonKey(ignore: true)
  @override
  _$$ChangeSelectedLanguageCopyWith<_$ChangeSelectedLanguage> get copyWith =>
      __$$ChangeSelectedLanguageCopyWithImpl<_$ChangeSelectedLanguage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSelectedLanguage,
    required TResult Function(LanguageEntity? languageEntity)
        changeSelectedLanguage,
  }) {
    return changeSelectedLanguage(languageEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSelectedLanguage,
    TResult Function(LanguageEntity? languageEntity)? changeSelectedLanguage,
  }) {
    return changeSelectedLanguage?.call(languageEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSelectedLanguage,
    TResult Function(LanguageEntity? languageEntity)? changeSelectedLanguage,
    required TResult orElse(),
  }) {
    if (changeSelectedLanguage != null) {
      return changeSelectedLanguage(languageEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSelectedLanguage value) getSelectedLanguage,
    required TResult Function(ChangeSelectedLanguage value)
        changeSelectedLanguage,
  }) {
    return changeSelectedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSelectedLanguage value)? getSelectedLanguage,
    TResult Function(ChangeSelectedLanguage value)? changeSelectedLanguage,
  }) {
    return changeSelectedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSelectedLanguage value)? getSelectedLanguage,
    TResult Function(ChangeSelectedLanguage value)? changeSelectedLanguage,
    required TResult orElse(),
  }) {
    if (changeSelectedLanguage != null) {
      return changeSelectedLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedLanguage implements LanguageEvent {
  const factory ChangeSelectedLanguage({final LanguageEntity? languageEntity}) =
      _$ChangeSelectedLanguage;

  LanguageEntity? get languageEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeSelectedLanguageCopyWith<_$ChangeSelectedLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguageState {
  bool? get loading => throw _privateConstructorUsedError;
  Option<Either<String, Unit>>? get response =>
      throw _privateConstructorUsedError;
  LanguageEntity? get selectedLanguage => throw _privateConstructorUsedError;
  List<LanguageEntity>? get supportedLanguages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res>;
  $Res call(
      {bool? loading,
      Option<Either<String, Unit>>? response,
      LanguageEntity? selectedLanguage,
      List<LanguageEntity>? supportedLanguages});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  final LanguageState _value;
  // ignore: unused_field
  final $Res Function(LanguageState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? response = freezed,
    Object? selectedLanguage = freezed,
    Object? supportedLanguages = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, Unit>>?,
      selectedLanguage: selectedLanguage == freezed
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageEntity?,
      supportedLanguages: supportedLanguages == freezed
          ? _value.supportedLanguages
          : supportedLanguages // ignore: cast_nullable_to_non_nullable
              as List<LanguageEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$$_LanguageStateCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$_LanguageStateCopyWith(
          _$_LanguageState value, $Res Function(_$_LanguageState) then) =
      __$$_LanguageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? loading,
      Option<Either<String, Unit>>? response,
      LanguageEntity? selectedLanguage,
      List<LanguageEntity>? supportedLanguages});
}

/// @nodoc
class __$$_LanguageStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res>
    implements _$$_LanguageStateCopyWith<$Res> {
  __$$_LanguageStateCopyWithImpl(
      _$_LanguageState _value, $Res Function(_$_LanguageState) _then)
      : super(_value, (v) => _then(v as _$_LanguageState));

  @override
  _$_LanguageState get _value => super._value as _$_LanguageState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? response = freezed,
    Object? selectedLanguage = freezed,
    Object? supportedLanguages = freezed,
  }) {
    return _then(_$_LanguageState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, Unit>>?,
      selectedLanguage: selectedLanguage == freezed
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as LanguageEntity?,
      supportedLanguages: supportedLanguages == freezed
          ? _value._supportedLanguages
          : supportedLanguages // ignore: cast_nullable_to_non_nullable
              as List<LanguageEntity>?,
    ));
  }
}

/// @nodoc

class _$_LanguageState implements _LanguageState {
  const _$_LanguageState(
      {this.loading,
      this.response,
      this.selectedLanguage,
      final List<LanguageEntity>? supportedLanguages})
      : _supportedLanguages = supportedLanguages;

  @override
  final bool? loading;
  @override
  final Option<Either<String, Unit>>? response;
  @override
  final LanguageEntity? selectedLanguage;
  final List<LanguageEntity>? _supportedLanguages;
  @override
  List<LanguageEntity>? get supportedLanguages {
    final value = _supportedLanguages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LanguageState(loading: $loading, response: $response, selectedLanguage: $selectedLanguage, supportedLanguages: $supportedLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality()
                .equals(other.selectedLanguage, selectedLanguage) &&
            const DeepCollectionEquality()
                .equals(other._supportedLanguages, _supportedLanguages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(selectedLanguage),
      const DeepCollectionEquality().hash(_supportedLanguages));

  @JsonKey(ignore: true)
  @override
  _$$_LanguageStateCopyWith<_$_LanguageState> get copyWith =>
      __$$_LanguageStateCopyWithImpl<_$_LanguageState>(this, _$identity);
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState(
      {final bool? loading,
      final Option<Either<String, Unit>>? response,
      final LanguageEntity? selectedLanguage,
      final List<LanguageEntity>? supportedLanguages}) = _$_LanguageState;

  @override
  bool? get loading => throw _privateConstructorUsedError;
  @override
  Option<Either<String, Unit>>? get response =>
      throw _privateConstructorUsedError;
  @override
  LanguageEntity? get selectedLanguage => throw _privateConstructorUsedError;
  @override
  List<LanguageEntity>? get supportedLanguages =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageStateCopyWith<_$_LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}
