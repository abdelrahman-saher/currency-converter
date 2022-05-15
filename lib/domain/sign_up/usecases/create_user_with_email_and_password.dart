import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../data/sign_up/failures.dart';
import '../entities/user.dart';
import '../repositories/signup_repository.dart';

@injectable
class CreateUserWithEmailAndPassword {
  CreateUserWithEmailAndPassword(this.signUpRepository);
  final SignupRepository signUpRepository;
  Future<Either<SignupFailures, Unit>> call(
      {@required UserEnitity? user}) async {
    return await signUpRepository.createUserWithEmailAndPassword(
      user: user,
    );
  }
}
