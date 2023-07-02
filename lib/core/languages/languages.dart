import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';
import '../../app/app.dart';
import 'ar.dart';
import 'en.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar_AE': ar_AE,
        'en_EN': en_US,
      };
}

bool isAR() {
  log("_____________-${Get.locale}");
  if ("${Get.locale}" == "ar_AE") {
    return true;
  } else {
    return false;
  }
}
