import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import 'package:mhg/features/profile/repository/profile_repository.dart';
import '../../../core/storage/storage_pref.dart';

class ProfileController extends GetxController {
  late ProfileRepo profileRepo;
  late Rxn<ProfileInfoModal> model = Rxn<ProfileInfoModal>();

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
            await StoragePref.setString(
              key: 'currency',
              value: App.currency,
            );
            log("currency is : ${App.currency}");
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
