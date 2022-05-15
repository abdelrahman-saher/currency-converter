import 'package:currency_converter/domain/currency_converter/entities/currency_rate.dart';
import 'package:currency_converter/domain/currency_converter/repository/repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSingleRateUseCase {
  GetSingleRateUseCase(this.converterRepository);
  final CurrencyConverterRepository converterRepository;
  Future<CurrencyRateEntity>? call(CurrencyRateEntity? rate) async {
    return await converterRepository.getSingleRate(rate);
  }
}
