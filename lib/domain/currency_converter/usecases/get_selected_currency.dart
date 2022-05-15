import 'package:currency_converter/domain/currency_converter/repository/repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/currency.dart';

@injectable
class GetSelectedCurrencyUseCase {
  GetSelectedCurrencyUseCase(this.converterRepository);
  final CurrencyConverterRepository converterRepository;
  Future<CurrencyEntity> call() async {
    return await converterRepository.getSelectedCurrency();
  }
}
