import 'package:equatable/equatable.dart';

class LanguageEntity extends Equatable {
  final String? _name;
  final String fullName;
  LanguageEntity._(this._name, this.fullName);
  factory LanguageEntity(String? name) {
    String? tmp = "";
    if (name == "en") {
      tmp = "English";
    } else if (name == "ar") {
      tmp = "العربية";
    }
    return LanguageEntity._(name, tmp);
  }
  factory LanguageEntity.empty() {
    return LanguageEntity._("en", "English");
  }
  String? get name => _name;
  @override
  List<Object?> get props => [_name];
}
