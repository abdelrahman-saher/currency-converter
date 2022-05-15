import 'package:currency_converter/domain/currency_converter/repository/repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/currency.dart';

@injectable
class ChangeSelectedCurrencyUseCase {
  ChangeSelectedCurrencyUseCase(this.converterRepository);
  final CurrencyConverterRepository converterRepository;
  Future<void> call(CurrencyEntity? currency) async {
    return await converterRepository.changeSelectedCurrency(currency);
  }
}
