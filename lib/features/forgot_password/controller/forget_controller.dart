import 'dart:convert';
import 'dart:developer';

import 'package:country_picker/country_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/auth/otp/view/pages/otp.dart';
import 'package:mhg/features/auth/signin/view/pages/sign_in_page.dart';
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
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  TextEditingController textController = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController otp = TextEditingController();
  TextEditingController messageController = TextEditingController();
  RxString countryCode = '+971'.obs;
  RxString countryFlag = AppAssets.flag.obs;
  RxString firstCountryFlag = ''.obs;

  String type='';

  @override
  void onInit() {
    String initEmail = Get.arguments[0];
    textController.text = initEmail;
    type= Get.arguments[1];
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
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'enter your password';
    }
    if (value.length < 6) {
      return 'password must be 6 characters at least';
    } else {
      return null;
    }
  }

  Future<void> forgetPassword() async {
    log("called");
    isLoading(true);
    Map data= type=='email'?{
      'email': textController.text.trim()
    }:{
      'phone_number': countryCode.value+textController.text.trim()
    };

    Either<Failure, ApiResponse> results = await forgetPasswordRepo
        .forgetPassword(body: jsonEncode(data));
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
          if(type=='email')
          {
            log(textController.text);
            Get.toNamed(OtpPage.routeName,arguments: {
              "type": "reset",
              "countryCode": countryCode.value,
              "email": textController.text,
            },);
          }else{
            Get.toNamed(OtpPage.routeName,arguments: {
              "type": "reset",
              "countryCode": countryCode.value,
              "phone": textController.text,
            },);
          }
          successSnackBar(r.object['data']);
        } else if (statusCode == 400) {
          showSnackBar(message);
        } else {
          showSnackBar(message);
        }
      },
    );
  }
  Future<void> resetPaassword() async {
    log("called");
    isLoading(true);
    Map data= {
      'otp': otp.text,
      'password':newPassword.text
    };

    Either<Failure, ApiResponse> results = await forgetPasswordRepo
        .resetPassword(body: jsonEncode(data));
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
          Get.offAllNamed(SignInPage.routeName,arguments: {"is_guest":false});
          successSnackBar(r.object['data']);
        } else if (statusCode == 400) {
          showSnackBar(message);
        } else {
          showSnackBar(message);
        }
      },
    );
  }
  selectCountry(Country country) {
    countryFlag.value = country.flagEmoji;
    countryCode.value = "+${country.phoneCode}";
    log( countryCode.value);
    firstCountryFlag.value = '';
    log("+${country.phoneCode}");
    log(countryFlag.value);
    update();
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
