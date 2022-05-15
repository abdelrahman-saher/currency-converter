import 'package:bloc/bloc.dart';
import 'package:currency_converter/data/currency_converter/failures.dart';
import 'package:currency_converter/domain/core/value_object/balance.dart';
import 'package:currency_converter/domain/currency_converter/entities/currency_rate.dart';
import 'package:currency_converter/domain/currency_converter/usecases/change_converted_currencies.dart';
import 'package:currency_converter/domain/currency_converter/usecases/change_selected_currency.dart';
import 'package:currency_converter/domain/currency_converter/usecases/get_converted_currencies.dart';
import 'package:currency_converter/domain/currency_converter/usecases/get_rates.dart';
import 'package:currency_converter/domain/currency_converter/usecases/get_selected_currency.dart';
import 'package:currency_converter/domain/currency_converter/usecases/get_single_rate.dart';
import 'package:currency_converter/domain/currency_converter/usecases/get_supported_currencies.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/currency_converter/entities/currency.dart';

part 'currency_converter_bloc.freezed.dart';
part 'currency_converter_event.dart';
part 'currency_converter_state.dart';

@injectable
class CurrencyConverterBloc
    extends Bloc<CurrencyConverterEvent, CurrencyConverterState> {
  final GetSupportedCurrenciesUseCase _getSupportedCurrenciesUseCase;
  final GetSelectedCurrencyUseCase _getSelectedCurrencyUseCase;
  final ChangeSelectedCurrencyUseCase _changeSelectedCurrencyUseCase;
  final GetConvertedCurrenciesUseCase _getConvertedCurrenciesUseCase;
  final ChangeConvertedCurrenciesUseCase _changeConvertedCurrenciesUseCase;
  final GetSingleRateUseCase _getSingleRateUseCase;
  final GetRatesUseCase _getRatesUseCase;
  CurrencyConverterBloc(
    this._getSupportedCurrenciesUseCase,
    this._getSelectedCurrencyUseCase,
    this._changeSelectedCurrencyUseCase,
    this._getConvertedCurrenciesUseCase,
    this._changeConvertedCurrenciesUseCase,
    this._getRatesUseCase,
    this._getSingleRateUseCase,
  ) : super(CurrencyConverterState.initial()) {
    on<CurrencyConverterEvent>((event, emit) async {
      if (event is InitializeEvent) {
        emit(
          state.copyWith(
            isLoading: true,
            supportedCurrencies: [],
          ),
        );
        final Either<CurrencyConverterFailures, List<CurrencyEntity>> result =
            await _getSupportedCurrenciesUseCase();
        final selectedCurrencyResult = await _getSelectedCurrencyUseCase();
        final convertedCurrencies = await _getConvertedCurrenciesUseCase();
        result.fold(
          (l) => null,
          (r) {
            return emit(
              state.copyWith(
                supportedCurrencies: r,
              ),
            );
          },
        );
        emit(
          state.copyWith(
            context: event.context,
            balance: BalanceVO("1252.456", context: event.context),
            selectedCurrency: selectedCurrencyResult,
            convertToCurrencies: convertedCurrencies,
          ),
        );
        List<CurrencyRateEntity> initRates = await _createRates(state);
        emit(
          state.copyWith(
            convertedCurrencies: initRates,
            isLoading: false,
          ),
        );
      } else if (event is ChangeSelectedCurrencyEvent) {
        emit(state.copyWith(
          selectedCurrency: event.currency,
          isLoading: true,
        ));
        _changeSelectedCurrencyUseCase(event.currency);
        List<CurrencyRateEntity> initRates = await _createRates(state);
        emit(state.copyWith(
          convertedCurrencies: initRates,
          isLoading: false,
        ));
      } else if (event is ChangeBalanceEvent) {
        emit(
          state.copyWith(
            balance: BalanceVO(
              event.inputBalance!,
              context: state.context,
            ),
          ),
        );

        emit(state.copyWith(convertedCurrencies: _updateRates(state)));
      } else if (event is AddNewCurrencyEvent) {
        List<CurrencyEntity> tempCurrencies = [
          ...state.convertToCurrencies!,
          event.currency!
        ];
        emit(
          state.copyWith(
            isAddingNewCurrency: true,
            convertToCurrencies: tempCurrencies,
          ),
        );
        CurrencyRateEntity newRate = CurrencyRateEntity(
          from: state.selectedCurrency,
          to: event.currency,
          balance: double.parse(state.balance!.getNotNullValue()!),
          rate: 1.0,
        );
        await _changeConvertedCurrenciesUseCase(
            [...state.convertToCurrencies!]);
        final result = await _getSingleRateUseCase(newRate);
        List<CurrencyRateEntity> tempRates = [
          ...state.convertedCurrencies!,
          result!,
        ];
        emit(
          state.copyWith(
            isAddingNewCurrency: false,
            convertedCurrencies: tempRates,
          ),
        );
      }
    });
  }
  Future<List<CurrencyRateEntity>> _createRates(
      CurrencyConverterState state) async {
    List<CurrencyRateEntity> rates = [];
    for (int i = 0; i < state.convertToCurrencies!.length; i++) {
      rates.add(CurrencyRateEntity(
        from: state.selectedCurrency,
        to: state.convertToCurrencies![i],
        balance: double.parse(state.balance!.getNotNullValue()!),
        rate: 1.0,
      ));
    }
    return (await _getRatesUseCase(rates))!;
  }

  List<CurrencyRateEntity> _updateRates(CurrencyConverterState state) {
    List<CurrencyRateEntity> rates = [...state.convertedCurrencies!];
    rates = rates.map((e) {
      e.balance = double.parse(
        state.balance!.getNotNullValue()!.isNotEmpty
            ? state.balance!.getNotNullValue()!
            : "0",
      );
      return e;
    }).toList();
    return rates;
  }
}
