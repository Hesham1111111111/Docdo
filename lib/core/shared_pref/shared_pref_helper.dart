import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_pref_keys.dart';

class SharedPrefHelper {
  // Private constructor to prevent instantiation
  SharedPrefHelper._();

  static late SharedPreferences _sharedPreferences;

  /// Initializes the SharedPreferences instance.
  /// Must be called before using any other methods.
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  /// Removes a value associated with the given [key].
  static Future<void> removeData({required String key}) async {
    debugPrint('SharedPrefHelper: Removing data with key: $key');
    await _sharedPreferences.remove(key);
  }

  /// Clears all data in SharedPreferences.
  static Future<void> clearAllData() async {
    debugPrint('SharedPrefHelper: Clearing all data');
    await _sharedPreferences.clear();
  }

  /// Saves a [value] with the given [key] in SharedPreferences.
  /// Supports [String], [int], [bool], and [double] values.
  static Future<void> setData({required String key, required dynamic value}) async {
    debugPrint('SharedPrefHelper: Setting data with key: $key and value: $value');

    if (value is String) {
      await _sharedPreferences.setString(key, value);
    } else if (value is int) {
      await _sharedPreferences.setInt(key, value);
    } else if (value is bool) {
      await _sharedPreferences.setBool(key, value);
    } else if (value is double) {
      await _sharedPreferences.setDouble(key, value);
    } else {
      throw ArgumentError('Unsupported value type: ${value.runtimeType}');
    }
  }

  /// Retrieves a bool value associated with the given [key].
  /// Returns `false` if the key does not exist.
  static bool getBool({required String key}) {
    debugPrint('SharedPrefHelper: Retrieving bool with key: $key');
    return _sharedPreferences.getBool(key) ?? false;
  }

  /// Retrieves a double value associated with the given [key].
  /// Returns `0.0` if the key does not exist.
  static double getDouble({required String key}) {
    debugPrint('SharedPrefHelper: Retrieving double with key: $key');
    return _sharedPreferences.getDouble(key) ?? 0.0;
  }

  /// Retrieves an int value associated with the given [key].
  /// Returns `0` if the key does not exist.
  static int getInt({required String key}) {
    debugPrint('SharedPrefHelper: Retrieving int with key: $key');
    return _sharedPreferences.getInt(key) ?? 0;
  }

  /// Retrieves a String value associated with the given [key].
  /// Returns an empty string if the key does not exist.
  static String getString({required String key}) {
    debugPrint('SharedPrefHelper: Retrieving string with key: $key');
    return _sharedPreferences.getString(key) ?? '';
  }
}
