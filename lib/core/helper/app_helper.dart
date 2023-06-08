import 'package:get/get.dart';

class AppHelper {
  static validation(String value, int min, int max, String type) {
    if (type == 'userName') {
      if (!GetUtils.isUsername(value)) {
        return 'Not valid';
      }
    }
    if (type == 'emial') {
      if (!GetUtils.isEmail(value)) {
        return 'Email not valid';
      }
    }
    if (type == 'Number') {
      if (!GetUtils.isPhoneNumber(value)) {
        return 'Phone number is invalid';
      }
    }
    if (value.trim().isEmpty) {
      return "can't be empty";
    }
    if (value.trim().length < min) {
      return "can't be less than $min";
    }
    if (value.trim().length > max) {
      return "can't be more than $max";
    }
  }

  validatePassword(String value) {
    if (value.length < 8) {
      return "Password length must be at least 8 characters";
    }
  }
}
