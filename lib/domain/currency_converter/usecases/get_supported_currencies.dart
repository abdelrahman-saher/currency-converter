import 'package:currency_converter/data/currency_converter/failures.dart';
import 'package:currency_converter/domain/currency_converter/repository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/currency.dart';

@injectable
class GetSupportedCurrenciesUseCase {
  GetSupportedCurrenciesUseCase(this.converterRepository);
  final CurrencyConverterRepository converterRepository;
  Future<Either<CurrencyConverterFailures, List<CurrencyEntity>>> call() async {
    return await converterRepository.getSupportedCurrencies();
  }
}
