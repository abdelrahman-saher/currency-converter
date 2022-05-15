import 'package:currency_converter/domain/language/entities/language.dart';
import 'package:equatable/equatable.dart';

class LanguageModel extends Equatable {
  final String? name;
  const LanguageModel._(this.name);
  factory LanguageModel.fromJson(dynamic json) {
    return LanguageModel._(
      json['lang'].toString(),
    );
  }
  factory LanguageModel.fromDomain(LanguageEntity languageEntity) {
    return LanguageModel._(
      languageEntity.name,
    );
  }
  factory LanguageModel.empty() {
    return const LanguageModel._("");
  }
  LanguageEntity toDomain() {
    return LanguageEntity(name);
  }

  Map<String, dynamic> toJson() {
    return {"lang": name};
  }

  @override
  List<Object?> get props => [name];
}
