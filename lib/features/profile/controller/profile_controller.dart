import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/countries.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';
import 'package:mhg/features/profile/models/send_hearts_model.dart';
import 'package:mhg/features/profile/models/send_hearts_request_model.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import 'package:mhg/features/profile/repository/profile_repository.dart';
import 'package:mhg/widgets/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/storage/storage_pref.dart';
import 'package:mhg/widgets/loading_widget.dart';

class ProfileController extends GetxController {
  late ProfileRepo profileRepo;
  late Rxn<ProfileInfoModal> model = Rxn<ProfileInfoModal>();
  SendHeartsModel sendHeartsModel = SendHeartsModel();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController feedback = TextEditingController();
  TextEditingController pointsController = TextEditingController();
  RxString countryCode = ''.obs;

  ProfileController() {
    profileRepo = Get.find<ProfileRepoImpl>();
  }
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxBool firstCall = true.obs;
  RxBool loadingUpdateCard = false.obs;
  RxString currnecy = "...".obs;
  final formKey = GlobalKey<FormState>();
  final feedbackFormKey = GlobalKey<FormState>();

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
          getProfileInfo();
          isError(true);
        },
        (r) async {
          int statusCode = r.object['code'];
          var message = r.object['message'];
          if (statusCode == 200) {
            model.value = ProfileInfoModal.fromJson(r.object["data"]);
            log('neee${model.value!.nextTierPts}');
            separatePhoneAndDialCode(model.value!.number ?? '');
            App.countryId = model.value?.country?.id;
            // App.currency = "${model.value?.country?.currency.currency}";
            model.value?.country?.name = App.countryName;
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
            bool notifayMe = App.notifyMe ?? false;
            App.token = '';
            await StoragePref.clear();
            await StoragePref.setbool(
              key: 'notifyme',
              value: notifayMe,
            );
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
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning'.tr;
    }
    if (hour < 17) {
      return 'Good Afternoon'.tr;
    }
    return 'Good Evening'.tr;
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

  Future<void> sendHearts() async {
    try {
      var body = SendHeartsRequestModel(
        hearts: double.parse(pointsController.text.trim()),
        phoneNumber: countryCode.value + phoneNumberController.text.trim(),
      ).toJson();
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      Either<Failure, ApiResponse> results = await profileRepo.sendHearts(body);
      Get.back();
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
          getProfileInfo();
          Get.back();
        } else {
          AppToasts.errorToast(message);
        }
      });
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<void> logOut() async {
    try {
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      Either<Failure, ApiResponse> results = await profileRepo.logOut();
      Get.back();
      results.fold((l) {
        AppToasts.errorToast(l.message);
        log("LOGOUT RESPONSE ERROR ${l.message}");
      }, (r) async {
        var statusCode = r.object["code"];
        var message = r.object["message"];
        log("LOGOUT RESPONSE STATUS $statusCode");
        log("${r.object}");
        if (statusCode == 200) {
          bool notifayMe = App.notifyMe ?? false;
          App.token = '';
          await StoragePref.clear();
          await StoragePref.setbool(
            key: 'notifyme',
            value: notifayMe,
          );
          Get.offAllNamed(OnBoardView.routeName);
        } else {
          AppToasts.errorToast(message);
        }
      });
    } catch (e, s) {
      log("$e $s");
    }
  }

  separatePhoneAndDialCode(String phoneWithDialCode) {
    Map<String, String> foundedCountry = {};
    for (var country in Countries.allCountries) {
      String dialCode = country["dial_code"].toString();
      if (phoneWithDialCode.contains(dialCode)) {
        foundedCountry = country;
      }
    }

    if (foundedCountry.isNotEmpty) {
      var dialCode = phoneWithDialCode.substring(
        0,
        foundedCountry["dial_code"]!.length,
      );
      var newPhoneNumber = phoneWithDialCode.substring(
        foundedCountry["dial_code"]!.length,
      );

      countryCode.value = dialCode;
      print({dialCode, newPhoneNumber});
    }
  }

  launchMyUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
  void connectViaWhatsApp({
    String? message,
    required String phone
  }) async {

    String number = phone.replaceAll('+', '');

    var androidUrl =message!=null?"whatsapp://send?text=+$message":
        "whatsapp://send?phone=+$number";
    var iosUrl = "https://wa.me/$number";
    try {
      if (Platform.isIOS) {
        await launchUrl(Uri.parse(iosUrl));
      } else {
        await launchUrl(Uri.parse(androidUrl));
      }
    } on Exception {
      showSnackBar('WhatsApp is not installed.');
    }
  }

  sendFeedbackReq() async {
    try {
      // Map<String, dynamic> body = {
      //   "item_id": cartItemId,
      //   "qty": quantity,
      //   "variant_id":variantId
      // };
      log(feedback.text);
      var body = jsonEncode({
        'message':feedback.text
      });
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      Either<Failure, ApiResponse> results = await profileRepo.sendFeedBack(body);
      Get.back();
      results.fold((l) {
        AppToasts.errorToast(l.message);
        log("SEND FEEDBACK METHODS RESPONSE ERROR ${l.message}");
      }, (r) async {
        var statusCode = r.object["code"];
        var message = r.object["message"];
        log("SEND FEEDBACK METHODS RESPONSE STATUS $statusCode");
        log("${r.object}");
        if (statusCode == 200) {

          AppToasts.successToast('Feedback has been sent Successfully!');
          feedback.clear();
          Get.back();
        } else {
          AppToasts.errorToast(message);
        }
      });
    } catch (e, s) {
      log("$e $s");
    }

  }

  launchFacebookPage() async {
    String fbProtocolUrl = '';
    if (Platform.isIOS) {
      fbProtocolUrl = 'fb://profile/426595437908808';
    } else {
      fbProtocolUrl = 'fb://page/426595437908808';
    }

    String fallbackUrl = 'http://www.facebook.com/mhgboutique.ae';

    try {
      bool launched = await launchUrl(Uri.parse(fbProtocolUrl),
          mode: LaunchMode.externalApplication);

      if (!launched) {
        await launchMyUrl('http://www.facebook.com/mhgboutique.ae');
      }
    } catch (e) {
      throw 'Could not launch ';
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
