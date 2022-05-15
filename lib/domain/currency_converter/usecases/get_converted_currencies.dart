import 'package:currency_converter/domain/currency_converter/repository/repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/currency.dart';

@injectable
class GetConvertedCurrenciesUseCase {
  GetConvertedCurrenciesUseCase(this.converterRepository);
  final CurrencyConverterRepository converterRepository;
  Future<List<CurrencyEntity>> call() async {
    return await converterRepository.getConvertedCurrencies();
  }
}
