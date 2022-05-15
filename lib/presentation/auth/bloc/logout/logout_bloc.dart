import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/auth/failures.dart';
import '../../../../domain/auth/usecases/log_out.dart';

part 'logout_bloc.freezed.dart';
part 'logout_event.dart';
part 'logout_state.dart';

@injectable
class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final LogOutUseCase _logOutUseCase;
  LogoutBloc(this._logOutUseCase) : super(const LogoutState.initial()) {
    on<LogoutEvent>((event, emit) async {
      if (event is LogoutE) {
        emit(const LogoutState.loading());
        final result = await _logOutUseCase();
        emit(result.fold(
          (failure) => LogoutState.failure(failure),
          (_) => const LogoutState.done(),
        ));
      }
    });
  }
}
