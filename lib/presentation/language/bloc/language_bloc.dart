import 'package:bloc/bloc.dart';
import 'package:currency_converter/domain/language/usecases/get_selected_language.dart';
import 'package:currency_converter/domain/language/usecases/select_language.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/language/entities/language.dart';
import 'const/languages.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

@injectable
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final GetSelectedLanguageUseCase _getSelectedLanguageUseCase;
  final SelectLanguageUseCase _selectLanguageUseCase;
  LanguageBloc(this._getSelectedLanguageUseCase, this._selectLanguageUseCase)
      : super(LanguageState.initial()) {
    on<LanguageEvent>((event, emit) async {
      if (event is GetSelectedLanguage) {
        final result = await _getSelectedLanguageUseCase();
        result.fold(
          (failure) => null,
          (language) => emit(
            state.copyWith(
              selectedLanguage: language,
            ),
          ),
        );
      } else if (event is ChangeSelectedLanguage) {
        final result = await _selectLanguageUseCase(
          language: event.languageEntity,
        );
        result.fold(
          (failure) => null,
          (language) => emit(
            state.copyWith(
              selectedLanguage: event.languageEntity,
            ),
          ),
        );
      }
    });
  }
}
