import 'package:currency_converter/data/login/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../repositories/login_repository.dart';

@injectable
class LoginWithGoogleUseCase {
  LoginWithGoogleUseCase(this.loginRepository);
  final LoginRepository loginRepository;
  Future<Either<LoginFailures, Unit>> call() async {
    return await loginRepository.loginWithGoogle();
  }
}
