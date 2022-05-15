import 'package:currency_converter/data/currency_converter/data/local/local_data_source.dart';
import 'package:currency_converter/data/currency_converter/data/remote/remote_data_source.dart';
import 'package:currency_converter/data/currency_converter/failures.dart';
import 'package:currency_converter/data/currency_converter/models/currency.dart';
import 'package:currency_converter/domain/currency_converter/entities/currency.dart';
import 'package:currency_converter/domain/currency_converter/entities/currency_rate.dart';
import 'package:currency_converter/domain/currency_converter/repository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CurrencyConverterRepository)
class CurrencyConverterRepositoryImpl implements CurrencyConverterRepository {
  final CurrencyConverterLocalDataSource _localDataSource;
  final CurrencyConverterRemoteDataSource _remoteDataSource;
  final String DEFAULT_CURRENCY = "USD";
  final List<String> DEFAULT_CONVERTED_CURRENCIES = [
    "GBP",
    "EUR",
    "LBP",
  ];
  CurrencyConverterRepositoryImpl(
    this._localDataSource,
    this._remoteDataSource,
  );

  @override
  Future<Either<CurrencyConverterFailures, List<CurrencyEntity>>>
      getSupportedCurrencies() async {
    try {
      List<CurrencyModel> cachedCurrencies =
          await _localDataSource.getSupportedCurrencies();
      if (cachedCurrencies.isNotEmpty) {
        return Right(
            cachedCurrencies.map((currency) => currency.toDomain()).toList());
      } else {
        List<CurrencyModel> remoteCurrencies =
            await _remoteDataSource.getSupportedCurrencies();
        await _localDataSource.cacheCurrencies(remoteCurrencies);
        return Right(
            remoteCurrencies.map((currency) => currency.toDomain()).toList());
      }
    } catch (e) {
      return left(CurrencyConverterFailures.serverFailure());
    }
  }

  @override
  Future<void> changeSelectedCurrency(CurrencyEntity? currency) async {
    try {
      await _localDataSource
          .changeSelectedCurrency(CurrencyModel.fromDomain(currency!));
    } catch (e) {}
  }

  @override
  Future<CurrencyEntity> getSelectedCurrency() async {
    List<CurrencyModel> cachedCurrencies =
        await _localDataSource.getSupportedCurrencies();
    try {
      String cachedCurrency = _localDataSource.getSelectedCurrency() ?? "";
      String selcectedCurrencyCode =
          cachedCurrency.isNotEmpty ? cachedCurrency : DEFAULT_CURRENCY;
      CurrencyModel selectedCurrency = cachedCurrencies
          .where((element) =>
              element.code!.toUpperCase() ==
              selcectedCurrencyCode.toUpperCase())
          .first;
      if (cachedCurrency.isEmpty) {
        await _localDataSource.changeSelectedCurrency(selectedCurrency);
      }
      return selectedCurrency.toDomain();
    } catch (e) {
      return cachedCurrencies
          .where((element) =>
              element.code!.toUpperCase() == DEFAULT_CURRENCY.toUpperCase())
          .first
          .toDomain();
    }
  }

  @override
  Future<List<CurrencyEntity>> getConvertedCurrencies() async {
    List<CurrencyModel> allCachedCurrencies =
        await _localDataSource.getSupportedCurrencies();
    try {
      List<String>? cachedCurrencies =
          _localDataSource.getConvertedCurrencies();
      List<String> selcectedCurrenciesCode = cachedCurrencies!.isNotEmpty
          ? cachedCurrencies
          : DEFAULT_CONVERTED_CURRENCIES;
      List<CurrencyModel> selectedCurrencies = allCachedCurrencies
          .where(
            (element) => selcectedCurrenciesCode.contains(
              element.code!.toUpperCase(),
            ),
          )
          .toList();
      if (cachedCurrencies.isEmpty) {
        await _localDataSource.changeConvertedCurrencies(selectedCurrencies);
      }
      return selectedCurrencies.map((element) => element.toDomain()).toList();
    } catch (e) {
      return allCachedCurrencies
          .where(
            (element) => DEFAULT_CONVERTED_CURRENCIES.contains(
              element.code!.toUpperCase(),
            ),
          )
          .toList()
          .map((e) => e.toDomain())
          .toList();
    }
  }

  @override
  Future<void> changeConvertedCurrencies(
      List<CurrencyEntity>? currencies) async {
    try {
      await _localDataSource.changeConvertedCurrencies(
        currencies!.map((e) => CurrencyModel.fromDomain(e)).toList(),
      );
    } catch (e) {}
  }

  @override
  Future<List<CurrencyRateEntity>> getRates(
      List<CurrencyRateEntity>? rates) async {
    try {
      List<CurrencyRateEntity> result = [];
      Map<String, dynamic> ratesMap = {};
      List<List<String>> data =
          _splitIntoPairs(rates!.map((e) => e.toString()).toList());
      for (int i = 0; i < data.length; i++) {
        List<String>? queryValues = data[i];
        String queryValue = queryValues.join(",");
        Map<String, String> query = {
          "q": queryValue,
          "compact": "ultra",
        };
        Map<String, dynamic> ratesResult =
            await _remoteDataSource.getRates(query);
        ratesMap.addAll(ratesResult);
      }
      for (int i = 0; i < rates.length; i++) {
        CurrencyRateEntity rate = rates[i];
        rate.rate = double.parse(ratesMap[rate.toString()].toString());
        result.add(rate);
      }
      return result;
    } catch (e) {
      return [];
    }
  }

  List<List<String>> _splitIntoPairs(List<String> input) {
    List<List<String>> temp = [];
    for (int i = 0; i < input.length; i += 2) {
      try {
        temp.add([input[i], input[i + 1]]);
      } catch (e) {
        temp.add([input[i]]);
      }
    }
    return temp;
  }

  @override
  Future<CurrencyRateEntity> getSingleRate(CurrencyRateEntity? rate) async {
    try {
      Map<String, String> query = {
        "q": rate.toString(),
        "compact": "ultra",
      };
      Map<String, dynamic> ratesResult =
          await _remoteDataSource.getRates(query);
      CurrencyRateEntity result = rate!;
      result.rate = double.parse(ratesResult[rate.toString()].toString());
      return result;
    } catch (e) {
      return rate!;
    }
  }
}
