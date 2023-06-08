import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/storage/storage_pref.dart';
import 'package:mhg/features/auth/signin/model/sign_in_model.dart';
import 'package:mhg/features/auth/signin/repository/sign_in_repo.dart';
import 'package:mhg/features/auth/signin/repository/sign_in_repo_Imp.dart';
import 'package:mhg/widgets/show_snakBar.dart';

class SignInController extends GetxController {
  late SignInRepo signInRepo;

  SignInController() {
    signInRepo = Get.find<SignInRepoImpl>();
  }

  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isVisable = true;
  RxBool isLoading = false.obs;
  RxString countryCode = '+971'.obs;
  RxString countryFlag = AppAssets.flag.obs;

  RxInt roleInd = 0.obs;

  changeVisibility() {
    isVisable = !isVisable;
    update();
  }

  String? validatePhone(String value) {
    if (value.isEmpty) {
      return 'required field';
    } else if (GetUtils.isPhoneNumber(countryCode.value + value) == false) {
      return 'enter valid phone number';
    } else {
      return null;
    }
  }

  Future<void> signIn() async {
    isLoading(true);

    var body = signInModelToJson(SignInModel(
      phone: countryCode + phone.text.trim().trim(),
      fbToken: '',
    ));

    Either<Failure, ApiResponse> results = await signInRepo.signIn(
      body: body,
    );
    isLoading(false);
    results.fold(
      (l) {
        showSnackBar(l.message);
      },
      (r) async {
        log("${r.object}");

        int statusCode = r.statusCode;

        if (statusCode == 200) {
          log(r.object);
          var token = r.object['token'];

          await StoragePref.setString(
            key: "token",
            value: token,
          );

          App.token = token;

          log(token);

          //Get.offAllNamed('/home');
        } else if (statusCode == 400) {
          showSnackBar(r.object['message']);
        } else {
          showSnackBar(r.object['message']);
        }
      },
    );
  }
}
