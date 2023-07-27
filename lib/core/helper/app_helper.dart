import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/storage/storage_pref.dart';
import 'package:uuid/uuid.dart';

class AppHelper {
  static validation(String value, int min, int max, String type) {
    if (type == 'userName') {
      if (!GetUtils.isUsername(value)) {
        return 'Please enter a valid name';
      }
    }
    if (type == 'email') {
      if (!GetUtils.isEmail(value)) {
        return 'Please enter a valid email address';
      }
    }
    if (type == 'Number') {
      if (!GetUtils.isPhoneNumber(value)) {
        return 'Please enter a valid phone number';
      }
    }
    if (value.trim().isEmpty) {
      return "Please fill out this field";
    }
    if (value.trim().length < min) {
      return "Can't be less than $min";
    }
    if (value.trim().length > max) {
      return "Can't be more than $max";
    }
  }

  static validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }
  }

  static String? validatePhone(String value) {
    bool validate =
        RegExp(r'^(?:\+971|00971|0)?(?:50|51|52|55|56|2|3|4|6|7|9)\d{7}$')
            .hasMatch(value);
    if (validate == false) {
      return 'Please enter a valid phone number';
    } else {
      return null;
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

  static Future<String> generateUuid() async {
    var uuid = const Uuid();
    var uuidValue = uuid.v1();
    await StoragePref.setString(
      key: 'uuid',
      value: uuidValue,
    );
    return uuidValue;
  }
}
