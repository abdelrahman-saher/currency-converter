part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    @required bool? loading,
    @required Option<Either<String, Unit>>? response,
    @required LanguageEntity? selectedLanguage,
    @required List<LanguageEntity>? supportedLanguages,
  }) = _LanguageState;
  factory LanguageState.initial() => LanguageState(
        loading: true,
        response: none(),
        supportedLanguages: LanguagesUtils.getSupportedLanguagesEn(),
        selectedLanguage: LanguagesUtils.getSupportedLanguagesEn()[0],
      );
}
