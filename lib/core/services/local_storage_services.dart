// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static LocalStorageService? _instance;
  static SharedPreferences? _preferences;

  ///
  /// List of const keys
  ///
  static const String onboardingCountKey = 'onBoardingCount';
  static const String notificationsCountKey = 'notificationsCount';

  ///
  /// Setters and getters
  ///
  int get onBoardingPageCount => _getFromDisk(onboardingCountKey) ?? 0;
  set setOnBoardingPageCount(int count) =>
      _saveToDisk(onboardingCountKey, count);

  int get setNotificationsCount => _getFromDisk(notificationsCountKey) ?? 0;
  set setNotificationsCount(int count) =>
      _saveToDisk(notificationsCountKey, count);

////
  ///initializing instance
  ///
  init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  dynamic _getFromDisk(String key) {
    var value = _preferences!.get(key);
    debugPrint(
        '(TRACE) LocalStorageService:_getFromDisk. key: $key value: $value');
    return value;
  }

  void _saveToDisk<T>(String key, T content) {
    debugPrint(
        '(TRACE) LocalStorageService:_saveToDisk. key: $key value: $content');

    if (content is String) {
      _preferences!.setString(key, content);
    }
    if (content is bool) {
      _preferences!.setBool(key, content);
    }
    if (content is int) {
      _preferences!.setInt(key, content);
    }
    if (content is double) {
      _preferences!.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences!.setStringList(key, content);
    }
    if (content == null) {
      _preferences!.remove(key);
    }
  }

  // static Future<LocalStorageService> getInstance() async {
  //   if (_instance == null) {
  //     _instance = LocalStorageService();
  //   }
  //   if (_preferences == null) {
  //     _preferences = await SharedPreferences.getInstance();
  //   }
  //   return _instance!;
  // }
}
