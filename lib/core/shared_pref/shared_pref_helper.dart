import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_pref_keys.dart';

class SharedPrefHelper {
  SharedPrefHelper._();

  static late SharedPreferences _prefs;
  static const _secureStorage = FlutterSecureStorage();

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// ---------- Normal Storage ----------

  static Future<void> setData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else {
      throw Exception('Unsupported type');
    }
  }

  static T? getData<T>(String key) {
    return _prefs.get(key) as T?;
  }

  static Future<void> removeData(String key) async {
    await _prefs.remove(key);
  }

  static Future<void> clearAll() async {
    await _prefs.clear();
  }

  /// ---------- Secure Storage ----------

  static Future<void> setSecuredString({
    required String key,
    required String value,
  }) async {
    await _secureStorage.write(key: key, value: value);
  }

  static Future<String?> getSecuredString({
    required String key,
  }) async {
    return await _secureStorage.read(key: key);
  }

  static Future<void> removeSecureData({
    required String key,
  }) async {
    await _secureStorage.delete(key: key);
  }

  static Future<void> clearSecure() async {
    await _secureStorage.deleteAll();
  }
}