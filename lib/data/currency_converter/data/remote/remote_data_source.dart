import 'package:currency_converter/data/currency_converter/models/currency.dart';

abstract class CurrencyConverterRemoteDataSource {
  Future<List<CurrencyModel>> getSupportedCurrencies();
  Future<Map<String, dynamic>> getRates(Map<String, String> query);
}
