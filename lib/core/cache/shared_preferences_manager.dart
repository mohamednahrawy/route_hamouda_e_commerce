import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static Future<bool> saveData(
      {required String key, required dynamic value}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else {
      return await sharedPreferences.setBool(key, value);
    }
  }

  static Future<Object?> getData(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.get(key);
  }

  static Future<bool> removeData(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.remove(key);
  }
}
