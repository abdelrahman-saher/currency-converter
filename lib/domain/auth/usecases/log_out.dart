import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/auth/failures.dart';
import '../repositories/auth_repository.dart';

@injectable
class LogOutUseCase {
  LogOutUseCase(this.authRepository);
  final AuthRepository authRepository;

  Future<Either<AuthFailures, Unit>> call() async {
    return await authRepository.logOut();
  }
}
