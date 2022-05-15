import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../data/sign_up/failures.dart';
import '../repositories/signup_repository.dart';
@injectable
class SignupWithGoogleUseCase {
  SignupWithGoogleUseCase(this.signUpRepository);
  final SignupRepository signUpRepository;
  Future<Either<SignupFailures, Unit>> call() async {
    return await signUpRepository.signupWithGoogle();
  }
}
