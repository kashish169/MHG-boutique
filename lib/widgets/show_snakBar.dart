import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController showSnackBar(String message) {
  return Get.snackbar(
    'Error',
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey,
    colorText: Colors.white,
  );
}

SnackbarController successSnackBar(String message) {
  return Get.snackbar(
    'Success',
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey,
    colorText: Colors.white,
  );
}
