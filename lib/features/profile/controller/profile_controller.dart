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
import 'package:mhg/widgets/loading_widget.dart';

class ProfileController extends GetxController {
  late ProfileRepo profileRepo;
  late Rxn<ProfileInfoModal> model = Rxn<ProfileInfoModal>();
  SendHeartsModel sendHeartsModel = SendHeartsModel();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController heartsController = TextEditingController();

  ProfileController() {
    profileRepo = Get.find<ProfileRepoImpl>();
  }
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxBool firstCall = true.obs;
  RxBool loadingUpdateCard = false.obs;

  Future<void> getProfileInfo() async {
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
          isError(true);
        },
        (r) async {
          log("${r.object}");
          int statusCode = r.object['code'];
          var message = r.object['message'];
          if (statusCode == 200) {
            model.value = ProfileInfoModal.fromJson(r.object["data"]);
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
    try {
      var body = SendHeartsRequestModel(
        hearts: double.parse(hearts),
        phoneNumber: phone,
      ).toJson();

      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results = await profileRepo.sendHearts(body);
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
    @override
    void onInit() {
      if (App.token.isNotEmpty) {
        getProfileInfo();
      }
      super.onInit();
    }
  }
}
