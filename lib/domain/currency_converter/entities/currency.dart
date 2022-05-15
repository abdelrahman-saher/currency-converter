import 'package:equatable/equatable.dart';

class CurrencyEntity extends Equatable {
  final String? code;
  final String? name;
  final String? symbol;
  const CurrencyEntity({this.code, this.name, this.symbol});
  @override
  List<String> get props => [code!, name!];
}
