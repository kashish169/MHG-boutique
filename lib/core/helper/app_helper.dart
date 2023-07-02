import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/storage/storage_pref.dart';

class AppHelper {
  static validation(String value, int min, int max, String type) {
    if (type == 'userName') {
      if (!GetUtils.isUsername(value)) {
        return 'Not valid';
      }
    }
    if (type == 'email') {
      if (!GetUtils.isEmail(value)) {
        return 'enter valid email';
      }
    }
    if (type == 'Number') {
      if (!GetUtils.isPhoneNumber(value)) {
        return 'enter valid phone number';
      }
    }
    if (value.trim().isEmpty) {
      return "required field";
    }
    if (value.trim().length < min) {
      return "Can't Be Less Than $min";
    }
    if (value.trim().length > max) {
      return "Can't Be More Than $max";
    }
  }

  static validatePassword(String value) {
    if (value.length < 8) {
      return "Password length must be at least 8 characters";
    }
  }

  static void closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static String timeFormat(DateTime dateTime) {
    return DateFormat('hh:mm aaa').format(dateTime);
  }

  static String dateFormat(DateTime dateTime) {
    return DateFormat('dd-MM-yyyy').format(dateTime);
  }

  static String difference(DateTime dateTime) {
    if (DateTime.now().difference(dateTime).inHours != 0) {
      return '${DateTime.now().difference(dateTime).inHours} hours ago';
    } else {
      if (DateTime.now().difference(dateTime).inMinutes != 0) {
        return '${DateTime.now().difference(dateTime).inMinutes} minutes ago';
      } else {
        return '${DateTime.now().difference(dateTime).inSeconds} seconds ago';
      }
    }
  }

  static Locale setLocale() {
    var lang = App.lang;
    if (lang.isEmpty) {
      return const Locale('en', 'US');
    } else if (lang == 'en_US') {
      return const Locale('en', 'US');
    } else {
      return const Locale('ar', 'AE');
    }
  }

  static Future<void> updateLanguage(Locale locale) async {
    log("CODE ${locale.languageCode}");
    App.lang = locale.languageCode;
    await StoragePref.setString(key: 'lang', value: locale.languageCode);
    await Get.updateLocale(locale);
  }
}
