import 'package:currency_converter/domain/language/entities/language.dart';
import 'package:currency_converter/domain/language/repositories/language_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectLanguageUseCase {
  SelectLanguageUseCase(this.languageRepository);
  final LanguageRepository languageRepository;
  Future<Either<String, Unit>> call({LanguageEntity? language}) async {
    return await languageRepository.selectLanguage(language!);
  }
}
