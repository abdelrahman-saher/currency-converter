import '../../model/language.dart';

abstract class LanguageLocalDataSource {
  Future<void> selectLanguage(LanguageModel languageModel);
  Future<LanguageModel> getSelectedLanguage();
}
