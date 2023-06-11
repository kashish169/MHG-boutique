import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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
}
