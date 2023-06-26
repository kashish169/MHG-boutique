import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/core/models/countries.dart';
import 'package:mhg/core/models/countries_model.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';
import '../../../app/app.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../../../core/storage/storage_pref.dart';
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
  CountriesModel countriesModel = CountriesModel();
  String selectedCountry = '';
  late ProfileInfoModal profileInfo;
  bool enableEditOnName = true;
  bool enableEditOnEmail = true;
  bool enableEditOnPassword = true;
  RxBool enableEditOnNumber = true.obs;
  bool enableEditOnAddress = true;
  bool enableEditOnState = true;
  bool enableEditOnZipCode = true;
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController address = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController zipCode = TextEditingController();
  bool isLoading = false;
  bool deleteLoading = false;
  bool iserror = false;
  RxString countryCode = '+971'.obs;
  RxString countryFlag = AppAssets.flag.obs;
  RxInt countryId = 0.obs;

  @override
  void onInit() {
    getAllCountries();
    profileInfo = Get.arguments["profile"];
    name.text = profileInfo.name;
    email.text = profileInfo.email;
    if (profileInfo.number != null) {
      separatePhoneAndDialCode(profileInfo.number!);
    } else {
      phone.text == 'Add your Number';
    }
    state.text = profileInfo.state ?? '';
    address.text = profileInfo.street ?? '';
    zipCode.text = profileInfo.zipCode ?? '';

    super.onInit();
  }

  setCountry(val) {
    selectedCountry = val;

    countryId(countriesModel.data!.firstWhere(
      (element) {
        return element.name == val;
      },
    ).id);

    update();
  }

  updateInformation() async {
    var formState = formKey.currentState;

    if (formState!.validate()) {
      isLoading = true;

      update();
      var body = updateInfoModel(
        UpdateInfoModel(
          name: name.text,
          email: email.text,
          address: address.text,
          number: countryCode + phone.text,
          notifyMe: App.notifyMe == true ? 1 : 0,
          isOptional: email.text == profileInfo.email ? true : false,
          state: state.text,
          zipCode: zipCode.text,
          countryId: countryId.value,
        ),
      );
      print("country id ${countryId.value}");
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

          AppToasts.errorToast("Updated Successfully");
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
    enableEditOnNumber.value = !enableEditOnNumber.value;
    update();
  }

  enableAddress() {
    enableEditOnAddress = !enableEditOnAddress;
    update();
  }

  enableState() {
    enableEditOnState = !enableEditOnState;
    update();
  }

  enableZipCode() {
    enableEditOnZipCode = !enableEditOnZipCode;
    update();
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
      phone.text = newPhoneNumber;
      countryCode.value = dialCode;
      print({dialCode, newPhoneNumber});
    }
  }

  deleteAccount() async {
    deleteLoading = true;
    update();
    Either<Failure, ApiResponse> results = await personalRepo.deleteData();
    deleteLoading = false;
    update();
    results.fold((l) {
      log(l.message);
      showSnackBar(l.message);
    }, (r) async {
      log("${r.object}");
      bool success = r.object['isSuccessful'];
      var message = r.object['message'];
      if (success == true) {
        await StoragePref.clear();
        Get.offAllNamed('/notification_permission');
        AppToasts.errorToast("Deleted Successfully");
      } else {
        AppToasts.errorToast(message);
      }
    });
  }

  Future<void> getAllCountries() async {
    try {
      isLoading = true;
      update();
      Either<Failure, ApiResponse> results = await personalRepo.getCountries();
      isLoading = false;
      update();
      results.fold(
        (l) {
          showSnackBar(l.message);
          log("GET COUNTRIES RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("GET COUNTRIES RESPONSE STATUS $statusCode");

          if (statusCode == 200) {
            if (r.object["data"] != null) {
              countriesModel = CountriesModel.fromJson(r.object);
              setCountry(countriesModel.data![0].name);
              update();
            }
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }
}
