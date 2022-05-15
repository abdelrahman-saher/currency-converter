part of 'currency_converter_bloc.dart';

@freezed
class CurrencyConverterState with _$CurrencyConverterState {
  const factory CurrencyConverterState({
    @required bool? isLoading,
    @required List<CurrencyEntity>? supportedCurrencies,
    @required List<CurrencyEntity>? convertToCurrencies,
    @required List<CurrencyRateEntity>? convertedCurrencies,
    @required BalanceVO? balance,
    @required BuildContext? context,
    @required CurrencyEntity? selectedCurrency,
    @required bool? isAddingNewCurrency,
  }) = _CurrencyConverterState;
  factory CurrencyConverterState.initial() => CurrencyConverterState(
        isLoading: true,
        supportedCurrencies: [],
        balance: BalanceVO(""),
        context: null,
        selectedCurrency: null,
        convertToCurrencies: [],
        convertedCurrencies: [],
        isAddingNewCurrency: false,
      );
}
