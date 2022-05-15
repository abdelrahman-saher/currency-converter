import 'package:currency_converter/data/login/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../entities/crredentials.dart';
import '../repositories/login_repository.dart';

@injectable
class LoginWithEmailAndPasswordUseCase {
  LoginWithEmailAndPasswordUseCase(this.loginRepository);
  final LoginRepository loginRepository;
  Future<Either<LoginFailures, Unit>> call(
      {@required CredentialsEntity? user}) async {
    return await loginRepository.loginWithEmailAndPassword(
      user: user,
    );
  }
}
