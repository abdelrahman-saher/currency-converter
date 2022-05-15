import 'package:currency_converter/data/login/data/local/local_data_source.dart';
import 'package:currency_converter/data/login/failures.dart';
import 'package:currency_converter/data/login/model/credentials.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../sign_up/models/user_model.dart';

@Injectable(as: LoginLocalDataSource)
class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  final SharedPreferences _prefs;
  LoginLocalDataSourceImpl(this._prefs);
  @override
  Future<void> cacheUser(CredentialsModel user) async {
    try {
      await _prefs.setString(UserModel.USER_ID_BOX_KEY!, user.token!);
      await _prefs.setString(UserModel.USER_NAME_BOX_KEY!, user.userName!);
    } catch (e) {
      throw LoginFailures.localFailure();
    }
  }
}
