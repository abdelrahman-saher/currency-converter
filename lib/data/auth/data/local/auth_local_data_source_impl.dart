import 'package:currency_converter/data/sign_up/models/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../failures.dart';
import 'auth_local_data_source.dart';

@Injectable(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences _prefs;
  AuthLocalDataSourceImpl(this._prefs);

  @override
  Future<Map<String, String>?> getCachedUser() async {
    try {
      final token = _prefs.getString(UserModel.USER_ID_BOX_KEY!);
      final name = _prefs.getString(UserModel.USER_NAME_BOX_KEY!);
      if (token == null || name == null) {
        throw AuthFailures.notAuthFailure();
      }
      return {
        "token": token.toString(),
        "name": name.toString(),
      };
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeAllCached() async {
    try {
      await _prefs.clear();
    } catch (e) {
      rethrow;
    }
  }
}
