import 'package:currency_converter/data/currency_converter/data/remote/remote_data_source.dart';
import 'package:currency_converter/data/currency_converter/models/currency.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CurrencyConverterRemoteDataSource)
class CurrencyConverterRemoteDataSourceImpl
    implements CurrencyConverterRemoteDataSource {
  final Dio _dio;
  String? _url;
  Map<String, String>? _authQuery;
  CurrencyConverterRemoteDataSourceImpl(this._dio) {
    _url = dotenv.env['CURRENCY_API_URL'];
    _authQuery = {
      'apiKey': dotenv.env['CURRENCY_API_KEY']!,
    };
  }

  @override
  Future<List<CurrencyModel>> getSupportedCurrencies() async {
    try {
      List<CurrencyModel> currencies = [];
      final response = ((await _dio.get(
        _url! + "/currencies",
        queryParameters: _authQuery,
      ))
          .data as Map<String, dynamic>)['results'] as Map<String, dynamic>;
      response.forEach((key, value) {
        currencies.add(CurrencyModel.fromJson(value as Map<String, dynamic>));
      });
      return currencies;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> getRates(Map<String, String> query) async {
    try {
      return (await _dio.get(
        _url! + "/convert",
        queryParameters: _authQuery!..addAll(query),
      ))
          .data as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }
}
