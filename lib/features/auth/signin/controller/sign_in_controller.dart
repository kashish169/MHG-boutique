import 'dart:developer';
import 'package:country_picker/country_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/storage/storage_pref.dart';
import 'package:mhg/features/auth/signin/model/response_model.dart';
import 'package:mhg/features/auth/signin/model/sign_in_model.dart';
import 'package:mhg/features/auth/signin/repository/sign_in_repo.dart';
import 'package:mhg/features/auth/signin/repository/sign_in_repo_Imp.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/show_snakBar.dart';
import '../../../mainwrapper/view/pages/main_wrapper.dart';

class SignInController extends GetxController {
  late SignInRepo signInRepo;
  late LoginModel loginModel;

  SignInController() {
    signInRepo = Get.find<SignInRepoImpl>();
  }
  TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isVisable = true.obs;
  RxBool isLoading = false.obs;
  RxString countryCode = '+971'.obs;
  RxString countryFlag = AppAssets.flag.obs;
  RxInt roleInd = 0.obs;
  String selectedCountryName = '';
  RxBool logWithEmail = false.obs;
  RxBool logWithNumber = true.obs;
  RxDouble numberLogHight = 53.0.obs;
  RxDouble emailLogHight = 45.0.obs;
  RxDouble emailLogwidth = (double.infinity * 0.3).obs;
  RxDouble numberLogwidth = (double.infinity * 0.35).obs;
  RxBool isGuest = false.obs;
  RxBool isOTP = false.obs;

  @override
  void onInit() {
    var args = Get.arguments;
    selectedCountryName = args["country"];
    isGuest.value = args["is_guest"];
    log("selectedCountryName $selectedCountryName");
    super.onInit();
  }

  changeVisibility() {
    isVisable.value = !isVisable.value;
  }

  String? validatePhone(String value) {
    if (GetUtils.isPhoneNumber(countryCode.value + value) == false) {
      return 'enter valid phone number';
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

  logWithNum() {
    logWithEmail.value = false;
    logWithNumber.value = true;
    numberLogHight.value = 53.0;
    emailLogHight.value = 45.0;
    numberLogwidth.value = (double.infinity * 0.35);
    emailLogwidth.value = (double.infinity * 0.3);
  }

  loginWithEmail() {
    logWithEmail.value = true;
    logWithNumber.value = false;
    numberLogHight.value = 45.0;
    emailLogHight.value = 53.0;
    numberLogwidth.value = (double.infinity * 0.3);
    emailLogwidth.value = (double.infinity * 0.35);
  }

  Future<void> signIn() async {
    Get.dialog(
      const LoadingWidget(),
      barrierDismissible: false,
    );
    var body = signInModelToJson(SignInModel(
      phone: countryCode + phone.text.trim(),
      fcmToken: App.fcmToken,
    ));
    Either<Failure, ApiResponse> results = await signInRepo.signIn(
      body: body,
    );
    Get.back();
    results.fold(
      (l) {
        showSnackBar(l.message);
      },
      (r) async {
        log("${r.object}");
        int statusCode = r.object["code"];
        var message = r.object['message'];
        if (statusCode == 200) {
          loginModel = LoginModel.fromJson(r.object['data']);
          var token = loginModel.token;
          App.token = token;
          Api.authorizedheaders = {
            'Content-Type': 'application/json',
            'Authorization': "Bearer $token",
          };
          print(token);
          await StoragePref.setString(
            key: "token",
            value: token,
          );
          log("ACCESS TOKEN : $token");
          Get.offAllNamed(MainWrapper.routeName);
        } else if (statusCode == 400) {
          AppToasts.errorToast(message);
        } else {
          AppToasts.errorToast(message);
        }
      },
    );
  }

  Future<void> signInWithOutOtp() async {
    Get.dialog(
      const LoadingWidget(),
      barrierDismissible: false,
    );
    var body = signInWithOutOtpModel(SignInWithOutOtpModel(
      fcmToken: App.fcmToken,
      email: logWithEmail.value ? email.text : null,
      phoneNumber: logWithEmail.value ? null : countryCode + phone.text.trim(),
      password: password.text,
    ));
    Either<Failure, ApiResponse> results = await signInRepo.signInWithOutOtp(
      body: body,
    );
    Get.back();
    results.fold(
      (l) {
        showSnackBar(l.message);
      },
      (r) async {
        log("${r.object}");
        int statusCode = r.object["code"];
        var message = r.object['message'];
        if (statusCode == 200) {
          loginModel = LoginModel.fromJson(r.object['data']);
          var token = loginModel.token;
          App.token = token;
          Api.authorizedheaders = {
            'Content-Type': 'application/json',
            'Authorization': "Bearer $token",
          };
          await StoragePref.setString(
            key: "token",
            value: token,
          );
          log("ACCESS TOKEN : $token");
          Get.offAllNamed(MainWrapper.routeName);
        } else if (statusCode == 400) {
          AppToasts.errorToast(message);
        } else {
          AppToasts.errorToast(message);
        }
      },
    );
  }

  selectCountry(Country country) {
    countryFlag.value = country.flagEmoji;
    countryCode.value = "+${country.phoneCode}";
    log("+${country.phoneCode}");
    update();
  }
}
