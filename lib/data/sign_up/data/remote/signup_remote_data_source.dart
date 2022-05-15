import '../../models/user_model.dart';

abstract class SignupRemoteDataSource {
  Future<String?> signupWithEmailAndPassword(UserModel user);
  Future<String?> signupWithFacebook(UserModel user);
  Future<String?> signupWithGoogle(UserModel user);
}
