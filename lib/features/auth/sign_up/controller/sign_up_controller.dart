import 'dart:developer';
import 'dart:io';
import 'package:country_picker/country_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/controller/sign_in_controller.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import 'package:mhg/features/on_board/model/country_model.dart';
import '../../../../app/app.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_toasts.dart';
import '../../../../core/api/api.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';
import '../../../../core/storage/storage_pref.dart';
import '../../../../widgets/loading_widget.dart';
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
      {String? verificationCode,
      String? phone,
      String? token,
      String? accountType,
      String? name,
      String? email}) async {
    Get.dialog(
      const LoadingWidget(),
      barrierDismissible: false,
    );
    var body = token != null
        ? signUpModelToJson(
            SignUpModel(
              accountType: accountType,
              email: email,
              userName: name,
              token: token,
              fcmToken: App.fcmToken,
              notifyMe: App.notifyMe == true ? 1 : 0,
              countryName: 'AED',
              countryId: 1,
            ),
            isSocial: true)
        : signUpModelToJson(SignUpModel(
            verificationCode: verificationCode,
            email: this.email.text.trim(),
            userName: this.name.text.trim(),
            phoneNumber: phone,
            password: password.text.trim(),
            accountType: this.accountType,
            fcmToken: App.fcmToken,
            countryName: signInController.selectedCountryName,
            notifyMe: App.notifyMe == true ? 1 : 0,
            countryId: signInController.selectedCountryId,
          ));
    Either<Failure, ApiResponse> results = await signUpRepo.signUp(
      body: body,
    );
    Get.back();
    results.fold((l) {
      showSnackBar(l.message);
    }, (r) async {
      bool success = r.object['isSuccessful'];
      var message = r.object['message'];
      if (success == true) {
        var data = r.object['data'];
        var tokenRes = data['token'];

        CountryModel? country =
            token == null ? CountryModel.fromJson(data["country"]) : null;
        App.token = tokenRes;
        App.countryId = country == null ? 1 : country.id;
        App.currency = country == null ? 'AED' : country.currency.currency;
        App.countryName = country == null ? 'Arab Emirates' : country.name;
        App.countryCode = country == null ? 'AE' : country.prefix;

        await StoragePref.setInt(
          key: 'countryid',
          value: App.countryId ?? 1,
        );
        await StoragePref.setString(
          key: 'currency',
          value: App.currency,
        );
        await StoragePref.setString(
          key: 'countryName',
          value: App.countryName,
        );
        await StoragePref.setString(
          key: 'countryCode',
          value: App.countryCode,
        );
        Api.authorizedheaders = {
          'Content-Type': 'application/json',
          'Authorization': "Bearer $tokenRes",
          'Country-Id': "${App.countryId}",
          'lang': Get.locale!.languageCode,
          'android-version': App.version,
          'ios-version': App.version,
          'env': Platform.isAndroid ? 'android' : 'ios'
        };
        await StoragePref.setString(
          key: "token",
          value: tokenRes,
        );
        // ProfileController profileController = Get.find();
        // profileController.updateProfileInfo(ProfileInfoModal.fromJson(data));
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
