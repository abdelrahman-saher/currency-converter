import '../../../../domain/language/entities/language.dart';

class LanguagesUtils {
  static List<LanguageEntity> getSupportedLanguagesEn() {
    return [
      LanguageEntity("en"),
      LanguageEntity("ar"),
    ];
  }
}
