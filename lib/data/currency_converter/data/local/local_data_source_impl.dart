import 'package:currency_converter/data/currency_converter/data/local/local_data_source.dart';
import 'package:currency_converter/data/currency_converter/models/currency.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: CurrencyConverterLocalDataSource)
class CurrencyConverterLocalDataSourceImpl
    implements CurrencyConverterLocalDataSource {
  final SharedPreferences _prefs;
  final String SUPPORTED_CURRENCIES_KEY = "supported_currencies";
  final String CONVERTED_CURRENCIES_KEY = "converted_currencies";
  final String SELECTED_CURRENCY_KEY = "selected_currency";
  CurrencyConverterLocalDataSourceImpl(this._prefs);

  @override
  Future<void> cacheCurrencies(List<CurrencyModel> currencies) async {
    try {
      await _prefs.setStringList(SUPPORTED_CURRENCIES_KEY,
          currencies.map((currency) => currency.toCache()).toList());
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CurrencyModel>> getSupportedCurrencies() async {
    try {
      List<String>? cachedCurrencies =
          _prefs.getStringList(SUPPORTED_CURRENCIES_KEY);
      return cachedCurrencies!.map((e) => CurrencyModel.fromCache(e)).toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<void> changeSelectedCurrency(CurrencyModel currency) async {
    try {
      await _prefs.setString(SELECTED_CURRENCY_KEY, currency.toString());
    } catch (e) {}
  }

  @override
  String? getSelectedCurrency() {
    try {
      return _prefs.getString(SELECTED_CURRENCY_KEY);
    } catch (e) {
      return "";
    }
  }

  @override
  Future<void> changeConvertedCurrencies(List<CurrencyModel> currencies) async {
    try {
      await _prefs.setStringList(
        CONVERTED_CURRENCIES_KEY,
        currencies.map((currency) => currency.toString()).toList(),
      );
    } catch (e) {}
  }

  @override
  List<String>? getConvertedCurrencies() {
    try {
      return _prefs.getStringList(CONVERTED_CURRENCIES_KEY);
    } catch (e) {
      return [];
    }
  }
}
