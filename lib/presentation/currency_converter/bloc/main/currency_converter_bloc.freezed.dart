// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_converter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyConverterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext? context) init,
    required TResult Function(CurrencyEntity? currency) changeSelectedCurrency,
    required TResult Function(String? inputBalance) changeBalance,
    required TResult Function(CurrencyEntity? currency) addNewCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) init,
    required TResult Function(ChangeSelectedCurrencyEvent value)
        changeSelectedCurrency,
    required TResult Function(ChangeBalanceEvent value) changeBalance,
    required TResult Function(AddNewCurrencyEvent value) addNewCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyConverterEventCopyWith<$Res> {
  factory $CurrencyConverterEventCopyWith(CurrencyConverterEvent value,
          $Res Function(CurrencyConverterEvent) then) =
      _$CurrencyConverterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrencyConverterEventCopyWithImpl<$Res>
    implements $CurrencyConverterEventCopyWith<$Res> {
  _$CurrencyConverterEventCopyWithImpl(this._value, this._then);

  final CurrencyConverterEvent _value;
  // ignore: unused_field
  final $Res Function(CurrencyConverterEvent) _then;
}

/// @nodoc
abstract class _$$InitializeEventCopyWith<$Res> {
  factory _$$InitializeEventCopyWith(
          _$InitializeEvent value, $Res Function(_$InitializeEvent) then) =
      __$$InitializeEventCopyWithImpl<$Res>;
  $Res call({BuildContext? context});
}

/// @nodoc
class __$$InitializeEventCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res>
    implements _$$InitializeEventCopyWith<$Res> {
  __$$InitializeEventCopyWithImpl(
      _$InitializeEvent _value, $Res Function(_$InitializeEvent) _then)
      : super(_value, (v) => _then(v as _$InitializeEvent));

  @override
  _$InitializeEvent get _value => super._value as _$InitializeEvent;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_$InitializeEvent(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$InitializeEvent implements InitializeEvent {
  const _$InitializeEvent(this.context);

  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'CurrencyConverterEvent.init(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$InitializeEventCopyWith<_$InitializeEvent> get copyWith =>
      __$$InitializeEventCopyWithImpl<_$InitializeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext? context) init,
    required TResult Function(CurrencyEntity? currency) changeSelectedCurrency,
    required TResult Function(String? inputBalance) changeBalance,
    required TResult Function(CurrencyEntity? currency) addNewCurrency,
  }) {
    return init(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
  }) {
    return init?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) init,
    required TResult Function(ChangeSelectedCurrencyEvent value)
        changeSelectedCurrency,
    required TResult Function(ChangeBalanceEvent value) changeBalance,
    required TResult Function(AddNewCurrencyEvent value) addNewCurrency,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitializeEvent implements CurrencyConverterEvent {
  const factory InitializeEvent(final BuildContext? context) =
      _$InitializeEvent;

  BuildContext? get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitializeEventCopyWith<_$InitializeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSelectedCurrencyEventCopyWith<$Res> {
  factory _$$ChangeSelectedCurrencyEventCopyWith(
          _$ChangeSelectedCurrencyEvent value,
          $Res Function(_$ChangeSelectedCurrencyEvent) then) =
      __$$ChangeSelectedCurrencyEventCopyWithImpl<$Res>;
  $Res call({CurrencyEntity? currency});
}

/// @nodoc
class __$$ChangeSelectedCurrencyEventCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res>
    implements _$$ChangeSelectedCurrencyEventCopyWith<$Res> {
  __$$ChangeSelectedCurrencyEventCopyWithImpl(
      _$ChangeSelectedCurrencyEvent _value,
      $Res Function(_$ChangeSelectedCurrencyEvent) _then)
      : super(_value, (v) => _then(v as _$ChangeSelectedCurrencyEvent));

  @override
  _$ChangeSelectedCurrencyEvent get _value =>
      super._value as _$ChangeSelectedCurrencyEvent;

  @override
  $Res call({
    Object? currency = freezed,
  }) {
    return _then(_$ChangeSelectedCurrencyEvent(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedCurrencyEvent implements ChangeSelectedCurrencyEvent {
  const _$ChangeSelectedCurrencyEvent(this.currency);

  @override
  final CurrencyEntity? currency;

  @override
  String toString() {
    return 'CurrencyConverterEvent.changeSelectedCurrency(currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedCurrencyEvent &&
            const DeepCollectionEquality().equals(other.currency, currency));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(currency));

  @JsonKey(ignore: true)
  @override
  _$$ChangeSelectedCurrencyEventCopyWith<_$ChangeSelectedCurrencyEvent>
      get copyWith => __$$ChangeSelectedCurrencyEventCopyWithImpl<
          _$ChangeSelectedCurrencyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext? context) init,
    required TResult Function(CurrencyEntity? currency) changeSelectedCurrency,
    required TResult Function(String? inputBalance) changeBalance,
    required TResult Function(CurrencyEntity? currency) addNewCurrency,
  }) {
    return changeSelectedCurrency(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
  }) {
    return changeSelectedCurrency?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
    required TResult orElse(),
  }) {
    if (changeSelectedCurrency != null) {
      return changeSelectedCurrency(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) init,
    required TResult Function(ChangeSelectedCurrencyEvent value)
        changeSelectedCurrency,
    required TResult Function(ChangeBalanceEvent value) changeBalance,
    required TResult Function(AddNewCurrencyEvent value) addNewCurrency,
  }) {
    return changeSelectedCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
  }) {
    return changeSelectedCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
    required TResult orElse(),
  }) {
    if (changeSelectedCurrency != null) {
      return changeSelectedCurrency(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedCurrencyEvent implements CurrencyConverterEvent {
  const factory ChangeSelectedCurrencyEvent(final CurrencyEntity? currency) =
      _$ChangeSelectedCurrencyEvent;

  CurrencyEntity? get currency => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeSelectedCurrencyEventCopyWith<_$ChangeSelectedCurrencyEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeBalanceEventCopyWith<$Res> {
  factory _$$ChangeBalanceEventCopyWith(_$ChangeBalanceEvent value,
          $Res Function(_$ChangeBalanceEvent) then) =
      __$$ChangeBalanceEventCopyWithImpl<$Res>;
  $Res call({String? inputBalance});
}

/// @nodoc
class __$$ChangeBalanceEventCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res>
    implements _$$ChangeBalanceEventCopyWith<$Res> {
  __$$ChangeBalanceEventCopyWithImpl(
      _$ChangeBalanceEvent _value, $Res Function(_$ChangeBalanceEvent) _then)
      : super(_value, (v) => _then(v as _$ChangeBalanceEvent));

  @override
  _$ChangeBalanceEvent get _value => super._value as _$ChangeBalanceEvent;

  @override
  $Res call({
    Object? inputBalance = freezed,
  }) {
    return _then(_$ChangeBalanceEvent(
      inputBalance == freezed
          ? _value.inputBalance
          : inputBalance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeBalanceEvent implements ChangeBalanceEvent {
  const _$ChangeBalanceEvent(this.inputBalance);

  @override
  final String? inputBalance;

  @override
  String toString() {
    return 'CurrencyConverterEvent.changeBalance(inputBalance: $inputBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBalanceEvent &&
            const DeepCollectionEquality()
                .equals(other.inputBalance, inputBalance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(inputBalance));

  @JsonKey(ignore: true)
  @override
  _$$ChangeBalanceEventCopyWith<_$ChangeBalanceEvent> get copyWith =>
      __$$ChangeBalanceEventCopyWithImpl<_$ChangeBalanceEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext? context) init,
    required TResult Function(CurrencyEntity? currency) changeSelectedCurrency,
    required TResult Function(String? inputBalance) changeBalance,
    required TResult Function(CurrencyEntity? currency) addNewCurrency,
  }) {
    return changeBalance(inputBalance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
  }) {
    return changeBalance?.call(inputBalance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
    required TResult orElse(),
  }) {
    if (changeBalance != null) {
      return changeBalance(inputBalance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) init,
    required TResult Function(ChangeSelectedCurrencyEvent value)
        changeSelectedCurrency,
    required TResult Function(ChangeBalanceEvent value) changeBalance,
    required TResult Function(AddNewCurrencyEvent value) addNewCurrency,
  }) {
    return changeBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
  }) {
    return changeBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
    required TResult orElse(),
  }) {
    if (changeBalance != null) {
      return changeBalance(this);
    }
    return orElse();
  }
}

abstract class ChangeBalanceEvent implements CurrencyConverterEvent {
  const factory ChangeBalanceEvent(final String? inputBalance) =
      _$ChangeBalanceEvent;

  String? get inputBalance => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeBalanceEventCopyWith<_$ChangeBalanceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewCurrencyEventCopyWith<$Res> {
  factory _$$AddNewCurrencyEventCopyWith(_$AddNewCurrencyEvent value,
          $Res Function(_$AddNewCurrencyEvent) then) =
      __$$AddNewCurrencyEventCopyWithImpl<$Res>;
  $Res call({CurrencyEntity? currency});
}

/// @nodoc
class __$$AddNewCurrencyEventCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res>
    implements _$$AddNewCurrencyEventCopyWith<$Res> {
  __$$AddNewCurrencyEventCopyWithImpl(
      _$AddNewCurrencyEvent _value, $Res Function(_$AddNewCurrencyEvent) _then)
      : super(_value, (v) => _then(v as _$AddNewCurrencyEvent));

  @override
  _$AddNewCurrencyEvent get _value => super._value as _$AddNewCurrencyEvent;

  @override
  $Res call({
    Object? currency = freezed,
  }) {
    return _then(_$AddNewCurrencyEvent(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
    ));
  }
}

/// @nodoc

class _$AddNewCurrencyEvent implements AddNewCurrencyEvent {
  const _$AddNewCurrencyEvent(this.currency);

  @override
  final CurrencyEntity? currency;

  @override
  String toString() {
    return 'CurrencyConverterEvent.addNewCurrency(currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewCurrencyEvent &&
            const DeepCollectionEquality().equals(other.currency, currency));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(currency));

  @JsonKey(ignore: true)
  @override
  _$$AddNewCurrencyEventCopyWith<_$AddNewCurrencyEvent> get copyWith =>
      __$$AddNewCurrencyEventCopyWithImpl<_$AddNewCurrencyEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext? context) init,
    required TResult Function(CurrencyEntity? currency) changeSelectedCurrency,
    required TResult Function(String? inputBalance) changeBalance,
    required TResult Function(CurrencyEntity? currency) addNewCurrency,
  }) {
    return addNewCurrency(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
  }) {
    return addNewCurrency?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext? context)? init,
    TResult Function(CurrencyEntity? currency)? changeSelectedCurrency,
    TResult Function(String? inputBalance)? changeBalance,
    TResult Function(CurrencyEntity? currency)? addNewCurrency,
    required TResult orElse(),
  }) {
    if (addNewCurrency != null) {
      return addNewCurrency(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) init,
    required TResult Function(ChangeSelectedCurrencyEvent value)
        changeSelectedCurrency,
    required TResult Function(ChangeBalanceEvent value) changeBalance,
    required TResult Function(AddNewCurrencyEvent value) addNewCurrency,
  }) {
    return addNewCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
  }) {
    return addNewCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? init,
    TResult Function(ChangeSelectedCurrencyEvent value)? changeSelectedCurrency,
    TResult Function(ChangeBalanceEvent value)? changeBalance,
    TResult Function(AddNewCurrencyEvent value)? addNewCurrency,
    required TResult orElse(),
  }) {
    if (addNewCurrency != null) {
      return addNewCurrency(this);
    }
    return orElse();
  }
}

abstract class AddNewCurrencyEvent implements CurrencyConverterEvent {
  const factory AddNewCurrencyEvent(final CurrencyEntity? currency) =
      _$AddNewCurrencyEvent;

  CurrencyEntity? get currency => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddNewCurrencyEventCopyWith<_$AddNewCurrencyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrencyConverterState {
  bool? get isLoading => throw _privateConstructorUsedError;
  List<CurrencyEntity>? get supportedCurrencies =>
      throw _privateConstructorUsedError;
  List<CurrencyEntity>? get convertToCurrencies =>
      throw _privateConstructorUsedError;
  List<CurrencyRateEntity>? get convertedCurrencies =>
      throw _privateConstructorUsedError;
  BalanceVO? get balance => throw _privateConstructorUsedError;
  BuildContext? get context => throw _privateConstructorUsedError;
  CurrencyEntity? get selectedCurrency => throw _privateConstructorUsedError;
  bool? get isAddingNewCurrency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyConverterStateCopyWith<CurrencyConverterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyConverterStateCopyWith<$Res> {
  factory $CurrencyConverterStateCopyWith(CurrencyConverterState value,
          $Res Function(CurrencyConverterState) then) =
      _$CurrencyConverterStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isLoading,
      List<CurrencyEntity>? supportedCurrencies,
      List<CurrencyEntity>? convertToCurrencies,
      List<CurrencyRateEntity>? convertedCurrencies,
      BalanceVO? balance,
      BuildContext? context,
      CurrencyEntity? selectedCurrency,
      bool? isAddingNewCurrency});
}

/// @nodoc
class _$CurrencyConverterStateCopyWithImpl<$Res>
    implements $CurrencyConverterStateCopyWith<$Res> {
  _$CurrencyConverterStateCopyWithImpl(this._value, this._then);

  final CurrencyConverterState _value;
  // ignore: unused_field
  final $Res Function(CurrencyConverterState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? supportedCurrencies = freezed,
    Object? convertToCurrencies = freezed,
    Object? convertedCurrencies = freezed,
    Object? balance = freezed,
    Object? context = freezed,
    Object? selectedCurrency = freezed,
    Object? isAddingNewCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportedCurrencies: supportedCurrencies == freezed
          ? _value.supportedCurrencies
          : supportedCurrencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>?,
      convertToCurrencies: convertToCurrencies == freezed
          ? _value.convertToCurrencies
          : convertToCurrencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>?,
      convertedCurrencies: convertedCurrencies == freezed
          ? _value.convertedCurrencies
          : convertedCurrencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyRateEntity>?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BalanceVO?,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      selectedCurrency: selectedCurrency == freezed
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      isAddingNewCurrency: isAddingNewCurrency == freezed
          ? _value.isAddingNewCurrency
          : isAddingNewCurrency // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrencyConverterStateCopyWith<$Res>
    implements $CurrencyConverterStateCopyWith<$Res> {
  factory _$$_CurrencyConverterStateCopyWith(_$_CurrencyConverterState value,
          $Res Function(_$_CurrencyConverterState) then) =
      __$$_CurrencyConverterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isLoading,
      List<CurrencyEntity>? supportedCurrencies,
      List<CurrencyEntity>? convertToCurrencies,
      List<CurrencyRateEntity>? convertedCurrencies,
      BalanceVO? balance,
      BuildContext? context,
      CurrencyEntity? selectedCurrency,
      bool? isAddingNewCurrency});
}

/// @nodoc
class __$$_CurrencyConverterStateCopyWithImpl<$Res>
    extends _$CurrencyConverterStateCopyWithImpl<$Res>
    implements _$$_CurrencyConverterStateCopyWith<$Res> {
  __$$_CurrencyConverterStateCopyWithImpl(_$_CurrencyConverterState _value,
      $Res Function(_$_CurrencyConverterState) _then)
      : super(_value, (v) => _then(v as _$_CurrencyConverterState));

  @override
  _$_CurrencyConverterState get _value =>
      super._value as _$_CurrencyConverterState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? supportedCurrencies = freezed,
    Object? convertToCurrencies = freezed,
    Object? convertedCurrencies = freezed,
    Object? balance = freezed,
    Object? context = freezed,
    Object? selectedCurrency = freezed,
    Object? isAddingNewCurrency = freezed,
  }) {
    return _then(_$_CurrencyConverterState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportedCurrencies: supportedCurrencies == freezed
          ? _value._supportedCurrencies
          : supportedCurrencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>?,
      convertToCurrencies: convertToCurrencies == freezed
          ? _value._convertToCurrencies
          : convertToCurrencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyEntity>?,
      convertedCurrencies: convertedCurrencies == freezed
          ? _value._convertedCurrencies
          : convertedCurrencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyRateEntity>?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BalanceVO?,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      selectedCurrency: selectedCurrency == freezed
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyEntity?,
      isAddingNewCurrency: isAddingNewCurrency == freezed
          ? _value.isAddingNewCurrency
          : isAddingNewCurrency // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_CurrencyConverterState implements _CurrencyConverterState {
  const _$_CurrencyConverterState(
      {this.isLoading,
      final List<CurrencyEntity>? supportedCurrencies,
      final List<CurrencyEntity>? convertToCurrencies,
      final List<CurrencyRateEntity>? convertedCurrencies,
      this.balance,
      this.context,
      this.selectedCurrency,
      this.isAddingNewCurrency})
      : _supportedCurrencies = supportedCurrencies,
        _convertToCurrencies = convertToCurrencies,
        _convertedCurrencies = convertedCurrencies;

  @override
  final bool? isLoading;
  final List<CurrencyEntity>? _supportedCurrencies;
  @override
  List<CurrencyEntity>? get supportedCurrencies {
    final value = _supportedCurrencies;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CurrencyEntity>? _convertToCurrencies;
  @override
  List<CurrencyEntity>? get convertToCurrencies {
    final value = _convertToCurrencies;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CurrencyRateEntity>? _convertedCurrencies;
  @override
  List<CurrencyRateEntity>? get convertedCurrencies {
    final value = _convertedCurrencies;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BalanceVO? balance;
  @override
  final BuildContext? context;
  @override
  final CurrencyEntity? selectedCurrency;
  @override
  final bool? isAddingNewCurrency;

  @override
  String toString() {
    return 'CurrencyConverterState(isLoading: $isLoading, supportedCurrencies: $supportedCurrencies, convertToCurrencies: $convertToCurrencies, convertedCurrencies: $convertedCurrencies, balance: $balance, context: $context, selectedCurrency: $selectedCurrency, isAddingNewCurrency: $isAddingNewCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyConverterState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._supportedCurrencies, _supportedCurrencies) &&
            const DeepCollectionEquality()
                .equals(other._convertToCurrencies, _convertToCurrencies) &&
            const DeepCollectionEquality()
                .equals(other._convertedCurrencies, _convertedCurrencies) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality()
                .equals(other.selectedCurrency, selectedCurrency) &&
            const DeepCollectionEquality()
                .equals(other.isAddingNewCurrency, isAddingNewCurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_supportedCurrencies),
      const DeepCollectionEquality().hash(_convertToCurrencies),
      const DeepCollectionEquality().hash(_convertedCurrencies),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(selectedCurrency),
      const DeepCollectionEquality().hash(isAddingNewCurrency));

  @JsonKey(ignore: true)
  @override
  _$$_CurrencyConverterStateCopyWith<_$_CurrencyConverterState> get copyWith =>
      __$$_CurrencyConverterStateCopyWithImpl<_$_CurrencyConverterState>(
          this, _$identity);
}

abstract class _CurrencyConverterState implements CurrencyConverterState {
  const factory _CurrencyConverterState(
      {final bool? isLoading,
      final List<CurrencyEntity>? supportedCurrencies,
      final List<CurrencyEntity>? convertToCurrencies,
      final List<CurrencyRateEntity>? convertedCurrencies,
      final BalanceVO? balance,
      final BuildContext? context,
      final CurrencyEntity? selectedCurrency,
      final bool? isAddingNewCurrency}) = _$_CurrencyConverterState;

  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  List<CurrencyEntity>? get supportedCurrencies =>
      throw _privateConstructorUsedError;
  @override
  List<CurrencyEntity>? get convertToCurrencies =>
      throw _privateConstructorUsedError;
  @override
  List<CurrencyRateEntity>? get convertedCurrencies =>
      throw _privateConstructorUsedError;
  @override
  BalanceVO? get balance => throw _privateConstructorUsedError;
  @override
  BuildContext? get context => throw _privateConstructorUsedError;
  @override
  CurrencyEntity? get selectedCurrency => throw _privateConstructorUsedError;
  @override
  bool? get isAddingNewCurrency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyConverterStateCopyWith<_$_CurrencyConverterState> get copyWith =>
      throw _privateConstructorUsedError;
}
