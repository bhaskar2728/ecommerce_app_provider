import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
  static SharedPreferences? prefs;

  SharedPref._();

  static Future<void> init() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  static void setBool(SharedPrefKey key, bool value) {
    prefs!.setBool(key.name, value);
  }

  static bool? getBool(SharedPrefKey key) {
    return prefs!.getBool(key.name);
  }
}

enum SharedPrefKey{
  isFirstTime,
}