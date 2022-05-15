import 'package:currency_converter/domain/currency_converter/entities/currency.dart';
import 'package:equatable/equatable.dart';

class CurrencyRateEntity extends Equatable {
  CurrencyEntity? from;
  CurrencyEntity? to;
  double? balance;
  double? rate;
  CurrencyRateEntity({
    this.balance,
    this.from,
    this.rate,
    this.to,
  });

  double getConvertedBalance() {
    return balance! * rate!;
  }

  @override
  String toString() {
    return from!.code!.toUpperCase() + "_" + to!.code!.toUpperCase();
  }

  @override
  List<Object> get props => [balance!, from!, rate!, to!];
}
