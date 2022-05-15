import 'package:dartz/dartz.dart';
import '../../../data/auth/failures.dart';
import '../repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthUserUseCase {
  AuthUserUseCase(this.authRepository);
  final AuthRepository authRepository;
  Future<Either<AuthFailures, Unit>> call() async {
    return await authRepository.getSignedInUser();
  }
}
