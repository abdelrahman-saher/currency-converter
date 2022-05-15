import 'package:currency_converter/data/language/data/local/local_data_source.dart';
import 'package:currency_converter/data/language/model/language.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/language/entities/language.dart';

@LazySingleton(as: LanguageLocalDataSource)
class LanguageLocalDataSourceImpl implements LanguageLocalDataSource {
  final SharedPreferences _prefs;

  LanguageLocalDataSourceImpl(this._prefs);

  @override
  Future<LanguageModel> getSelectedLanguage() async {
    try {
      final lang = _prefs.getString("lang");
      if (lang == null) {
        return LanguageModel.empty();
      }
      return LanguageModel.fromDomain(LanguageEntity(lang));
    } catch (e) {
      return LanguageModel.empty();
    }
  }

  @override
  Future<void> selectLanguage(LanguageModel languageModel) async {
    try {
      await _prefs.setString("lang", languageModel.name!);
    } catch (e) {
      rethrow;
    }
  }
}
