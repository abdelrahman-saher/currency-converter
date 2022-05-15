import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/auth/usecases/auth_user.dart';

part 'auth_user_bloc.freezed.dart';
part 'auth_user_event.dart';
part 'auth_user_state.dart';

@injectable
class AuthUserBloc extends Bloc<AuthUserEvent, AuthUserState> {
  final AuthUserUseCase _authUserUseCase;
  AuthUserBloc(this._authUserUseCase) : super(const AuthUserState.initial()) {
    on<AuthUserEvent>((event, emit) async {
      if (event is AuthEvent) {
        final result = await _authUserUseCase();
        result.fold((l) => emit(const NotAuthedState()),
            (r) => emit(const AuthedState()));
      }
    });
  }
}
