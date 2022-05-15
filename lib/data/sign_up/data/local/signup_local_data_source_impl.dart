import 'package:currency_converter/data/sign_up/data/local/signup_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../failures.dart';
import '../../models/user_model.dart';

@Injectable(as: SignupLocalDataSource)
class SignupLocalDataSourceImpl implements SignupLocalDataSource {
  final SharedPreferences _prefs;
  SignupLocalDataSourceImpl(this._prefs);
  @override
  Future<void> cacheUser(UserModel user) async {
    try {
      await _prefs.setString(UserModel.USER_ID_BOX_KEY!, user.token!);
      await _prefs.setString(UserModel.USER_NAME_BOX_KEY!, user.userName!);
    } catch (e) {
      throw SignupFailures.localFailure();
    }
  }
}
