import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  final SharedPreferences _prefs;

  SharedPreferenceService(this._prefs);

  Future<void> saveAccessToken(String token) async {
    await _prefs.setString('access_token', token);
  }

  String? getAccessToken() {
    return _prefs.getString('access_token');
  }

  Future<void> saveRefreshToken(String token) async {
    await _prefs.setString('refresh_token', token);
  }

  String? getRefreshToken() {
    return _prefs.getString('refresh_token');
  }

  Future<void> clearTokens() async {
    await _prefs.remove('access_token');
    await _prefs.remove('refresh_token');
  }
}
