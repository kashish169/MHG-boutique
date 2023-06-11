import 'package:get_storage/get_storage.dart';

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

  static Future<void> clear() async {
    await box.erase();
  }
}
