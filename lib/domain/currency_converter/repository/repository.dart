import 'package:currency_converter/data/currency_converter/failures.dart';
import 'package:currency_converter/domain/currency_converter/entities/currency.dart';
import 'package:currency_converter/domain/currency_converter/entities/currency_rate.dart';
import 'package:dartz/dartz.dart';

abstract class CurrencyConverterRepository {
  Future<Either<CurrencyConverterFailures, List<CurrencyEntity>>>
      getSupportedCurrencies();
  Future<CurrencyEntity> getSelectedCurrency();
  Future<List<CurrencyEntity>> getConvertedCurrencies();
  Future<void> changeSelectedCurrency(CurrencyEntity? currency);
  Future<void> changeConvertedCurrencies(List<CurrencyEntity>? currencies);
  Future<List<CurrencyRateEntity>> getRates(List<CurrencyRateEntity>? rates);
  Future<CurrencyRateEntity> getSingleRate(CurrencyRateEntity? rates);
}
