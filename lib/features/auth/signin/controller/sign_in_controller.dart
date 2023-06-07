import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';


class SignInController extends GetxController {
  // late SignInRepo signInRepo;

  SignInController() {
  //  signInRepo = Get.find<SignInRepoImpl>();
  }

  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isVisable = true;
  RxBool isLoading = false.obs;
  RxString countryCode = '+971'.obs;
  RxString countryFlag = AppAssets.flag.obs;

  RxInt roleInd = 0.obs;

  changeVisanility() {
    isVisable = !isVisable;
    update();
  }


}
