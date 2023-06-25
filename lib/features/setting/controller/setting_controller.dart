import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/features/setting/repository/settings_repo.dart';

import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../model/privacy_model.dart';
import '../model/terms_model.dart';
import '../repository/settings_repo_impl.dart';

class SettingController extends GetxController {
  late SettingsRepo settingsRepo;

  SettingController() {
    settingsRepo = Get.find<SettingsRepoImpl>();
  }

  RxString selectedLanguage = 'English'.obs;
  RxList languagesList = ['English', 'Arabic'].obs;
  RxString selectedCountry = 'UAE'.obs;
  RxList countriesList = ['UAE', 'FRANCE'].obs;
  RxBool notificationAllowed = false.obs;
  RxBool adsAllowed = false.obs;
  RxBool isLoadingTerms = false.obs;
  RxBool isErrorTerms = false.obs;
  RxBool isLoadingPrivacy = false.obs;
  RxBool isErrorPrivacy = false.obs;
  late TermsModel termsModel;
  late PraivacyModel praivacyModel;
  @override
  void onInit() {
    getPraivacyData();
    getTermsAndConditionsData();
    super.onInit();
  }

  getPraivacyData() async {
    try {
      isLoadingPrivacy(true);
      isErrorPrivacy(false);
      Either<Failure, ApiResponse> results =
          await settingsRepo.getPraivacyPolicy();
      isLoadingPrivacy(false);
      results.fold(
        (l) {
          isErrorPrivacy(true);
          AppToasts.errorToast(l.message);
          log("Privacy ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          var stats = r.object['isSuccessful'];
          log("Privacy Status Code $statusCode");
          if (stats == true) {
            var model = r.object['data']['privacy_policy'];
            praivacyModel = PraivacyModel.fromJson(model);
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e) {
      isErrorPrivacy(true);
      AppToasts.errorToast("$e");
      print("catch error" "$e");
    }
  }

  getTermsAndConditionsData() async {
    try {
      isLoadingTerms(true);
      isErrorTerms(false);
      Either<Failure, ApiResponse> results =
          await settingsRepo.getTermsAndConditions();
      isLoadingTerms(false);
      results.fold(
        (l) {
          isErrorTerms(true);
          AppToasts.errorToast(l.message);
          log("Terms&Conditions ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          var stats = r.object['isSuccessful'];
          log("Terms&Conditions Status Code $statusCode");
          if (stats == true) {
            var model = r.object['data']['terms_conditions'];
            termsModel = TermsModel.fromJson(model);
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e) {
      isErrorTerms(true);
      AppToasts.errorToast("$e");
      print("catch error" "$e");
    }
  }
}
