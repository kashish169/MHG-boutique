import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';

import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../../../widgets/show_snack_bar.dart';
import '../model/personal_model.dart';
import '../repository/personal_info_repo.dart';
import '../repository/personal_info_repo_imp.dart';

class PersonalInformationController extends GetxController {
  late PersonalInfoRepo personalRepo;

  PersonalInformationController() {
    personalRepo = Get.find<PersonalInfoRepoImpl>();
  }
  ProfileController profileController = Get.find();
  final formKey = GlobalKey<FormState>();
  late ProfileInfoModal profileInfo;
  bool enableEditOnName = true;
  bool enableEditOnEmail = true;
  bool enableEditOnPassword = true;
  bool enableEditOnNumber = true;
  bool enableEditOnAddress = true;
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController address = TextEditingController();
  bool isLoading = false;
  bool iserror = false;
  String countryCode = '+971';
  @override
  void onInit() {
    profileInfo = Get.arguments["profile"];
    print(profileInfo.number);
    name.text = profileInfo.name;
    email.text = profileInfo.email;
    phone.text = profileInfo.number ?? 'Add your Number';
    address.text = profileInfo.street ?? 'Add your address';
    super.onInit();
  }

  updateInformation() async {
    var formState = formKey.currentState;
    if (formState!.validate()) {
      isLoading = true;
      update();
      var body = updateInfoModel(UpdateInfoModel(
          name: name.text,
          email: email.text,
          address: address.text,
          number: countryCode + phone.text));
      Either<Failure, ApiResponse> results = await personalRepo.updateData(
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
          Get.back();
          profileController.getProfileInfo();
        } else {
          AppToasts.errorToast(message);
        }
      });
    }
  }

  enableName() {
    enableEditOnName = !enableEditOnName;
    update();
  }

  enableEmail() {
    enableEditOnEmail = !enableEditOnEmail;
    update();
  }

  enablePassword() {
    enableEditOnPassword = !enableEditOnPassword;
    update();
  }

  enableNumber() {
    enableEditOnNumber = !enableEditOnNumber;
    update();
  }

  enableAddress() {
    enableEditOnAddress = !enableEditOnAddress;
    update();
  }
}
