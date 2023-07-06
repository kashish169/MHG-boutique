import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/forgot_password/repository/forget_password_repo_impl.dart';
import 'package:mhg/features/forgot_password/repository/forget_password_repository.dart';

import '../../../widgets/show_snakBar.dart';

class ForgetController extends GetxController {
  late ForgetPasswordRepo forgetPasswordRepo;

  ForgetController() {
    forgetPasswordRepo = Get.find<ForgetPasswordRepoImpl>();
  }

  RxBool isLoading = false.obs;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void onInit() {
    String initEmail = Get.arguments;
    email.text = initEmail;
    super.onInit();
  }

  String? validateEmail(String email) {
    var value = AppHelper.validation(email, 1, 500, 'email');
    if (value == false) {
      return 'enter valid email';
    } else {
      return null;
    }
  }

  Future<void> forgetPassword() async {
    isLoading(true);

    Either<Failure, ApiResponse> results = await forgetPasswordRepo
        .forgetPassword(body: jsonEncode({'email': email.text.trim()}));
    isLoading(false);
    results.fold(
      (l) {
        showSnackBar(l.message);
      },
      (r) async {
        log("${r.object}");
        int statusCode = r.object['code'];
        var message = r.object['message'];
        if (statusCode == 200) {
          Get.back();
          successSnackBar(r.object['data']);
        } else if (statusCode == 400) {
          showSnackBar(message);
        } else {
          showSnackBar(message);
        }
      },
    );
  }
// Future<void> resetPassword() async {
//   isLoading(true);
//
//   Either<Failure, ApiResponse> results = await forgetPasswordRepo.resetPassword(body: jsonEncode({
//     'email':email.text.trim(),
//     "token":'',
//     "password":pa
//   }));
//   isLoading(false);
//   results.fold(
//         (l) {
//       showSnackBar(l.message);
//     },
//         (r) async {
//       log("${r.object}");
//       int statusCode = r.object['code'];
//       var message = r.object['message'];
//       if (statusCode == 200) {
//         showSnackBar( r.object['data']);
//
//         Get.offAllNamed('/forget_pass2');
//       } else if (statusCode == 400) {
//         showSnackBar(message);
//       } else {
//         showSnackBar(message);
//       }
//     },
//   );
// }
}
