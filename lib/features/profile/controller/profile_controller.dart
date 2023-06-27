import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';
import 'package:mhg/features/profile/models/send_hearts_model.dart';
import 'package:mhg/features/profile/models/send_hearts_request_model.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import 'package:mhg/features/profile/repository/profile_repository.dart';
import '../../../core/storage/storage_pref.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/loading_widget.dart';
import '../../../core/storage/storage_pref.dart';

class ProfileController extends GetxController {
  late ProfileRepo profileRepo;
  late Rxn<ProfileInfoModal> model = Rxn<ProfileInfoModal>();
  SendHeartsModel sendHeartsModel = SendHeartsModel();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController heartsController = TextEditingController();
  RxString countryCode = ''.obs;

  ProfileController() {
    profileRepo = Get.find<ProfileRepoImpl>();
  }
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxBool firstCall = true.obs;
  RxBool loadingUpdateCard = false.obs;
  RxString currnecy = "...".obs;

  Future<void> getProfileInfo() async {
    log("________________getProfileInfo");
    try {
      if (model.value == null) {
        isLoading(true);
      } else {
        loadingUpdateCard(true);
      }
      isError(false);
      Either<Failure, ApiResponse> results = await profileRepo.getInfo();
      isLoading(false);
      loadingUpdateCard(false);
      results.fold(
        (l) {
          getProfileInfo();
          isError(true);
        },
        (r) async {
          int statusCode = r.object['code'];
          var message = r.object['message'];
          if (statusCode == 200) {
            model.value = ProfileInfoModal.fromJson(r.object["data"]);
            App.countryId = model.value?.country?.id;
            App.currency = "${model.value?.country?.currency.currency}";
            currnecy.value = App.currency;
            await StoragePref.setInt(
              key: 'countryid',
              value: App.countryId ?? 1,
            );
            await StoragePref.setString(
              key: 'currency',
              value: App.currency,
            );
            log("currency is : ${App.currency}");
            log("countryId is : ${App.countryId}");
            firstCall(false);
          } else if (statusCode == 400) {
            AppToasts.errorToast(message);
          } else if (statusCode == 401) {
            Get.offAllNamed(OnBoardView.routeName);
          } else {
            isError(true);
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      isError(true);
    }
  }

  String getLevelIcon() {
    if (model.value!.currentTier == "Mojab") {
      return AppAssets.mojab;
    } else if (model.value!.currentTier == "Moghram") {
      return AppAssets.moghram;
    } else {
      return AppAssets.molah;
    }
  }

  sendHearts(hearts, phone) async {
    String validatedPhone = validateMobile(phone);
    if (heartsController.text.isEmpty || phoneNumberController.text.isEmpty) {
      AppToasts.errorToast('Fields can not be empty !');
    }
    if (validatedPhone == 'Please enter mobile number' ||
        validatedPhone == '') {
      AppToasts.errorToast('Please enter mobile number !');
    } else if (validatedPhone == 'Please enter valid mobile number') {
      AppToasts.errorToast('Please enter valid mobile number');
    } else {
      try {
        var body = SendHeartsRequestModel(
          hearts: double.parse(hearts),
          phoneNumber: countryCode.value + phone,
        ).toJson();

        isLoading(true);
        isError(false);
        Either<Failure, ApiResponse> results =
            await profileRepo.sendHearts(body);
        isLoading(false);
        results.fold((l) {
          AppToasts.errorToast(l.message);
          log("SEND HEARTS METHODS RESPONSE ERROR ${l.message}");
        }, (r) async {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("SEND HEARTS METHODS RESPONSE STATUS $statusCode");
          log("${r.object}");
          if (statusCode == 200) {
            sendHeartsModel = SendHeartsModel.fromJson(r.object);
            AppToasts.successToast('Points has been sent Successfully!');
          } else {
            AppToasts.errorToast(message);
          }
        });
      } catch (e, s) {
        log("$e $s");
      }
    }
  }

  String validateMobile(String? value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (value != null) {
      if (value.isEmpty) {
        return 'Please enter mobile number';
      } else if (!regExp.hasMatch(value)) {
        return 'Please enter valid mobile number';
      }
    } else {
      return 'Please enter mobile number';
    }
    return '';
  }

  @override
  void onInit() {
    if (App.token.isNotEmpty) {
      getProfileInfo();
    } else {
      currnecy.value = App.currency;
    }
    super.onInit();
  }
}
