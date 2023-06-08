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
        return 'Email Not valid';
      }
    }
    if (type == 'Number') {
      if (!GetUtils.isPhoneNumber(value)) {
        return 'Phone Number Is Invalid';
      }
    }
    if (value.trim().isEmpty) {
      return "Can't Be Empty";
    }
    if (value.trim().length < min) {
      return "Can't Be Less Than $min";
    }
    if (value.trim().length > max) {
      return "Can't Be More Than $max";
    }
  }

  validatePassword(String value) {
    if (value.length < 8) {
      return "Password length must be at least 8 characters";
    }
  }
}
