import 'package:currency_converter/domain/currency_converter/entities/currency_rate.dart';
import 'package:currency_converter/domain/currency_converter/repository/repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRatesUseCase {
  GetRatesUseCase(this.converterRepository);
  final CurrencyConverterRepository converterRepository;
  Future<List<CurrencyRateEntity>?> call(List<CurrencyRateEntity>? rates) async {
    return await converterRepository.getRates(rates);
  }
}
