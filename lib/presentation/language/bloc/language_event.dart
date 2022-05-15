part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.getSelectedLanguage() = GetSelectedLanguage;
  const factory LanguageEvent.changeSelectedLanguage(
      {LanguageEntity? languageEntity}) = ChangeSelectedLanguage;
}
