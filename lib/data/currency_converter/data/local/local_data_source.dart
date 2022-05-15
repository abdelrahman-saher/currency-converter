import 'package:currency_converter/data/currency_converter/models/currency.dart';

abstract class CurrencyConverterLocalDataSource {
  Future<List<CurrencyModel>> getSupportedCurrencies();
  Future<void> cacheCurrencies(List<CurrencyModel> currencies);
  String? getSelectedCurrency();
  List<String>? getConvertedCurrencies();
  Future<void> changeSelectedCurrency(CurrencyModel currency);
  Future<void> changeConvertedCurrencies(List<CurrencyModel> currencies);
}
