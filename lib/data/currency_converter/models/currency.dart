import 'package:currency_converter/domain/currency_converter/entities/currency.dart';
import 'package:equatable/equatable.dart';

class CurrencyModel extends Equatable {
  final String? code;
  final String? name;
  final String? symbol;
  const CurrencyModel._(this.name, this.code, this.symbol);
  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel._(
      json['currencyName'].toString(),
      json['id'].toString(),
      json.containsKey("currencySymbol") ? json['currencySymbol'] : "",
    );
  }
  factory CurrencyModel.fromCache(String currencyItem) {
    List<String> currencyItemList = currencyItem.split("|");
    return CurrencyModel._(
      currencyItemList[1],
      currencyItemList[0],
      currencyItemList[2],
    );
  }
  factory CurrencyModel.fromDomain(CurrencyEntity currencyItem) {
    return CurrencyModel._(
      currencyItem.name,
      currencyItem.code,
      currencyItem.symbol,
    );
  }
  CurrencyEntity toDomain() {
    return CurrencyEntity(
      name: name,
      symbol: symbol,
      code: code,
    );
  }

  String toCache() {
    return "$code|$name|$symbol";
  }

  @override
  String toString() {
    return code!.toUpperCase();
  }

  @override
  List<Object?> get props => [code, name];
}
