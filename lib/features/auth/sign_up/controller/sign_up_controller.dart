import 'dart:developer';
import 'package:country_picker/country_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/controller/sign_in_controller.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import '../../../../app/app.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_toasts.dart';
import '../../../../core/api/api.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';
import '../../../../core/storage/storage_pref.dart';
import '../../../../widgets/show_snack_bar.dart';
import '../models/sign_up_model.dart';
import '../repository/sign_up_repo_impl.dart';
import '../repository/sign_up_repository.dart';

class SignUpController extends GetxController {
  late SignUpRepo signUpRepo;

  SignUpController() {
    signUpRepo = Get.find<SignUpRepoImpl>();
  }

  final signInController = Get.find<SignInController>();
  bool isLoading = false;
  bool iserror = false;
  String countryCode = '+971';
  String countryFlag = AppAssets.flag;
  RxString firstCountryFlag = ''.obs;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool isVisable = true;
  String accountType = 'normal';

  Future<void> signUp(
      {required String verificationCode, required String phone}) async {
    log(phone);
    log(countryCode);
    isLoading = true;
    update();
    var body = signUpModelToJson(SignUpModel(
      verificationCode: verificationCode,
      email: email.text.trim(),
      userName: name.text.trim(),
      phoneNumber: phone,
      password: password.text.trim(),
      accountType: accountType,
      fcmToken: App.fcmToken,
      countryName: signInController.selectedCountryName,
      notifyMe: App.notifyMe == true ? 1 : 0,
      countryId: signInController.selectedCountrId,
    ));
    Either<Failure, ApiResponse> results = await signUpRepo.signUp(
      body: body,
    );
    isLoading = false;
    update();
    results.fold((l) {
      log(l.message);
      showSnackBar(l.message);
    }, (r) async {
      log("${r.object}");
      bool success = r.object['isSuccessful'];
      var message = r.object['message'];
      if (success == true) {
        var data = r.object['data'];
        var token = data['token'];
        App.token = token;
        Api.authorizedheaders = {
          'Content-Type': 'application/json',
          'Authorization': "Bearer $token",
        };
        await StoragePref.setString(
          key: "token",
          value: token,
        );
        Get.offAllNamed(MainWrapper.routeName);
      } else {
        AppToasts.errorToast(message);
      }
    });
  }

  changeVisanility() {
    isVisable = !isVisable;
    update();
  }

  selectCountry(Country country) {
    countryFlag = country.flagEmoji;
    countryCode = "+${country.phoneCode}";
    firstCountryFlag.value = '';
    log(country.flagEmoji);
    update();
  }
}
