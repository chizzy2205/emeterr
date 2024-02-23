// shared_preferences_helper.dart

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String _firstTimeKey = 'firstTime';

  static Future<bool> isFirstTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_firstTimeKey) ?? true;
  }

  static Future<void> setFirstTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_firstTimeKey, false);
  }
}
