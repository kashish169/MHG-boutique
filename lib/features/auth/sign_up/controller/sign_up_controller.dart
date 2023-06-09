import 'dart:developer';
import 'package:country_picker/country_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/app_assets.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';
import '../../../../widgets/show_snack_bar.dart';
import '../models/sign_up_model.dart';
import '../repository/sign_up_repo_impl.dart';
import '../repository/sign_up_repository.dart';

class SignUpController extends GetxController {
  late SignUpRepo signUpRepo;

  SignUpController() {
    signUpRepo = Get.find<SignUpRepoImpl>();
  }
  bool isLoading = false;
  bool iserror = false;
  String countryCode = '+971';
  String countryFlag = AppAssets.flag;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool isVisable = true;
  String accountType = 'normal';

  Future<void> signUp() async {
    var formState = formKey2.currentState;
    if (formState!.validate()) {
      isLoading = true;
      update();
      var body = signUpModelToJson(SignUpModel(
        email: email.text.trim(),
        userName: name.text.trim(),
        phoneNumber: countryCode + phone.text.trim(),
        password: password.text.trim(),
        accountType: accountType,
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
          Get.toNamed('/otp');
        } else {
          showSnackBar(message);
        }
      });
    }
  }

  changeVisanility() {
    isVisable = !isVisable;
    update();
  }

  selcteCountry(Country country) {
    countryFlag = country.flagEmoji;
    countryCode = "+${country.phoneCode}";
    log(country.flagEmoji);
    update();
  }
}
