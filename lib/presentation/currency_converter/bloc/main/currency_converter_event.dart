part of 'currency_converter_bloc.dart';

@freezed
class CurrencyConverterEvent with _$CurrencyConverterEvent {
  const factory CurrencyConverterEvent.init(BuildContext? context) =
      InitializeEvent;
  const factory CurrencyConverterEvent.changeSelectedCurrency(
      CurrencyEntity? currency) = ChangeSelectedCurrencyEvent;
  const factory CurrencyConverterEvent.changeBalance(String? inputBalance) =
      ChangeBalanceEvent;
  const factory CurrencyConverterEvent.addNewCurrency(
      CurrencyEntity? currency) = AddNewCurrencyEvent;
}
