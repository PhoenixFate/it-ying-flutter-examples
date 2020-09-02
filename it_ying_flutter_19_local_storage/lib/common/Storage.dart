import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  // Future<void> 表示无返回；等价于返回promise
  static Future<void> setString(key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }

  static Future<String> getString(key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  static Future<void> remove(key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(key);
  }
}
