import 'package:currency_converter/data/language/data/local/local_data_source.dart';
import 'package:currency_converter/data/language/model/language.dart';
import 'package:currency_converter/domain/language/entities/language.dart';
import 'package:currency_converter/domain/language/repositories/language_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LanguageRepository)
class LanguageRepositoryImpl implements LanguageRepository {
  final LanguageLocalDataSource _languageLocalDataSource;
  LanguageRepositoryImpl(this._languageLocalDataSource);

  @override
  Future<Either<String, LanguageEntity>> getSelectedLanguage() async {
    try {
      LanguageModel languageModel =
          await _languageLocalDataSource.getSelectedLanguage();
      LanguageModel defaultLanguage =
          LanguageModel.fromJson(const {"lang": "en"});
      if (languageModel == LanguageModel.empty()) {
        _languageLocalDataSource.selectLanguage(defaultLanguage);
        return right(defaultLanguage.toDomain());
      } else {
        return right(languageModel.toDomain());
      }
      // return right(LanguageEntity("ar"));
    } catch (e) {
      return left("ERROR");
    }
  }

  @override
  Future<Either<String, Unit>> selectLanguage(
      LanguageEntity languageEntity) async {
    try {
      _languageLocalDataSource.selectLanguage(
        LanguageModel.fromDomain(languageEntity),
      );
      return right(unit);
    } catch (e) {
      return left("ERROR");
    }
  }
}
