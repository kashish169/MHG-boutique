import 'dart:developer';

import 'package:get_storage/get_storage.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';

class StoragePref {
  static final box = GetStorage();

  static Future<void> setString({
    required String key,
    required String value,
  }) async {
    await box.write(key, value);
  }

  static Future<String> getString(String key) async {
    return await box.read(key) ?? "";
  }

  static Future<void> setbool({
    required String key,
    required bool value,
  }) async {
    await box.write(key, value);
  }

  static Future<bool?> getbool(String key) async {
    return await box.read(key);
  }

  static Future<void> setInt({
    required String key,
    required int value,
  }) async {
    await box.write(key, value);
  }

  static Future<int> getInt(String key) async {
    return await box.read(key) ?? 1;
  }

  static Future<void> clear() async {
    App.token = '';
    log("ACCESS TOKEN ${App.token}");
    await box.erase();
  }
}
