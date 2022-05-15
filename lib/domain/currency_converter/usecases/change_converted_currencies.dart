import 'package:currency_converter/domain/currency_converter/repository/repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/currency.dart';

@injectable
class ChangeConvertedCurrenciesUseCase {
  ChangeConvertedCurrenciesUseCase(this.converterRepository);
  final CurrencyConverterRepository converterRepository;
  Future<void> call(List<CurrencyEntity>? currencies) async {
    return await converterRepository.changeConvertedCurrencies(currencies);
  }
}
