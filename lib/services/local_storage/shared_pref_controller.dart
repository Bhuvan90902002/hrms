import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController {
  SharedPrefController._privateConstructor();

  static final SharedPrefController instance =
  SharedPrefController._privateConstructor();

  static SharedPreferences? _preferences;

  Future<SharedPreferences> get preference async {
    if (_preferences != null) return _preferences!;
    _preferences = await init();
    return _preferences!;
  }

  Future<SharedPreferences> init() async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref;
  }

  Future<bool> setStringData({required String key, required String data}) async {
    final sharedPreferences = await preference;
    var encrypted =  data;
    return await sharedPreferences.setString(key, encrypted);
  }

  Future<String> getStringData({required String key}) async {
    final sharedPreferences = await preference;
    var str = sharedPreferences.getString(key);
    if (str != null && str.isNotEmpty) {
      var decrypted = str;
      return decrypted;
    }
    return "";
  }

  Future<bool> setBoolData({required String key, required bool value}) async {
    final sharedPreferences = await preference;
    return await sharedPreferences.setBool(key, value);
  }

  Future<bool> getBoolData({required String key}) async {
    final sharedPreferences = await preference;
    var data = sharedPreferences.getBool(key);
    return data ?? false;
  }

  Future<bool> setIntegerData({required String key, required int value}) async {
    final sharedPreferences = await preference;
    return await sharedPreferences.setInt(key, value);
  }

  Future<int> getIntegerData({required String key}) async {
    final sharedPreferences = await preference;
    var data = sharedPreferences.getInt(key);
    return data ?? 0; // Changed from false to 0 (since return type is int)
  }

  Future<bool> clearAllData() async {
    final sharedPreferences = await preference;
    return await sharedPreferences.clear();
  }
}
