import 'package:dartz/dartz.dart';
import '../entities/language.dart';


abstract class LanguageRepository {
  Future<Either<String, LanguageEntity>> getSelectedLanguage();
  Future<Either<String, Unit>> selectLanguage(LanguageEntity languageEntity);
}
