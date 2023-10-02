import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/core/models/countries.dart';
import 'package:mhg/core/models/countries_model.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';
import 'package:mhg/widgets/loading_widget.dart';
import '../../../app/app.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../../../core/storage/storage_pref.dart';
import '../../../widgets/show_snack_bar.dart';
import '../../checkout/models/countries_cities_static_data.dart';
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
  RxBool isLoadingCities = false.obs;
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
  final TextEditingController dateTextEditingController =
      TextEditingController();
  bool isLoading = false;
  bool deleteLoading = false;
  bool iserror = false;
  RxString countryCode = '+971'.obs;
  RxString countryFlag = AppAssets.flag.obs;
  RxInt countryId = 1.obs;
  DateTime date = DateTime.now();
  RxBool isEdit = false.obs;
  String? selectedCity;
  List<CountryDataModel> countriesList = [];
  String? selectedGender;
  List<String> citiesList = uaeCitiesList;
  List<String> omanCitiesList = omanCities;
  List<String> kuwaitCitiesList = kuwaitCities;
  List<String> saudiArabiaCitiesList = saudiArabiaCities;
  List<String> qatarCitiesList = qatarCities;

  @override
  void onInit() {
    if (App.countryId != null) {
      countryId.value = App.countryId!;
    }
    profileInfo = Get.arguments["profile"];
    log("==================${profileInfo.gender}");
    log("==================${profileInfo.dob}");
    log("==================${profileInfo.state}");
    // selectedCity = profileInfo.state == '' ? null : profileInfo.state;
    // if (citiesList.contains(profileInfo.state)) {
    //   selectedCity = profileInfo.state;
    // } else {
    //   selectedCity = null;
    // }
    name.text = profileInfo.name;
    email.text = profileInfo.email;

    if (profileInfo.number != null) {
      separatePhoneAndDialCode(profileInfo.number!);
    } else {
      phone.text == 'Add your Number';
    }
    state.text = profileInfo.state ?? '';
    selectedCity = profileInfo.state ?? '';
    address.text = profileInfo.street ?? '';
    zipCode.text = profileInfo.zipCode ?? '';
    dateTextEditingController.text = profileInfo.dob ?? '';
    selectedGender = profileInfo.gender;
    selectedCountry=profileInfo.country?.name??'';
    log("here");
    log(profileInfo.toString());
    // countriesList.add(CountryDataModel(
    //   id: 1,
    //   name: "United Arab Emirates",
    //   flagLink:
    //       "https://api.mhgboutique.com/uploaded_files/country/64a413436c91b1688474435.png",
    // ));
    getAllCountries();

    super.onInit();
  }

  chooseDate(Future<DateTime?> datePicker) async {
    DateTime? newDate = await datePicker;
    if (newDate != null) {
      date = newDate;
      dateTextEditingController.text = "${date.year}-${date.month}-${date.day}";
      update();
    } else {}
  }

  chooseGender(String gender) {
    selectedGender = gender;
    update();
  }

  setCountry(val) {
    if (val == selectedCountry) {
      return;
    }
    isLoadingCities.trigger(true);
    isEdit.trigger(true);
    selectedCountry = val;
    log(selectedCountry);
    countryId(countriesModel.data!.firstWhere(
      (element) {
        return element.name == val;
      },
    ).id);
    state.text = '';
    selectedCity = '';
    isLoadingCities.trigger(false);
    update();
  }

  setCity(val) {
    selectedCity = val;
    state.text = val;
    log('$selectedCity');
    update();
  }

  updateInformation() async {
    var formState = formKey.currentState;

    if (formState!.validate()) {
      if (state.text.isEmpty) {
        if (countryId.value == 1) {
          AppToasts.errorToast('Please select an emirate');
        } else {
          AppToasts.errorToast('Please select a city');
        }
        return;
      }
      Get.dialog(
        const LoadingWidget(),
        barrierDismissible: false,
      );
      update();
      var body = updateInfoModel(
        UpdateInfoModel(
          name: name.text,
          email: email.text,
          address: address.text,
          number: countryCode + phone.text,
          notifyMe: App.notifyMe == true ? 1 : 0,
          isOptional: email.text == profileInfo.email ? true : false,
          state: state.text ?? '',
          dob: dateTextEditingController.text,
          gender: selectedGender,
          zipCode: '00000',
          countryId: countryId.value,
        ),
      );
      log("Gender================ $selectedGender");
      log("Dop================ ${dateTextEditingController.text}");

      Either<Failure, ApiResponse> results = await personalRepo.updateData(
        body: body,
      );
      update();
      results.fold((l) {
        Get.back();
        log(l.message);
        showSnackBar(l.message);
      }, (r) async {
        log("${r.object}");
        bool success = r.object['isSuccessful'];
        var message = r.object['message'];
        if (success == true) {

          Get.find<HomeController>().homeModel = null;
          Get.find<WishListController>().getWishList();
          await profileController.getProfileInfo();
          AppToasts.successToast("Updated Successfully");
          Get.back();
          Get.back();
        } else {
          Get.back();
          AppToasts.errorToast(message);
        }
      });
    }
  }

  enableName() {
    isEdit.trigger(true);
    enableEditOnName = !enableEditOnName;
    update();
  }

  enableEmail() {
    isEdit.trigger(true);
    enableEditOnEmail = !enableEditOnEmail;
    update();
  }

  enablePassword() {
    isEdit.trigger(true);
    enableEditOnPassword = !enableEditOnPassword;
    update();
  }

  enableNumber() {
    isEdit.trigger(true);
    enableEditOnNumber.value = !enableEditOnNumber.value;
    update();
  }

  enableAddress() {
    isEdit.trigger(true);
    enableEditOnAddress = !enableEditOnAddress;
    update();
  }

  enableState() {
    isEdit.trigger(true);
    enableEditOnState = !enableEditOnState;
    update();
  }

  enableZipCode() {
    isEdit.trigger(true);
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
      log('{$dialCode, $newPhoneNumber}');
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
          iserror = true;
          update();
          showSnackBar(l.message);
          log("GET COUNTRIES RESPONSE ERROR ${l.message}");
        },
        (r) async {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("GET COUNTRIES RESPONSE STATUS $statusCode");

          if (statusCode == 200) {
            if (r.object["data"] != null) {
              log("COUNTRIES ${r.object["data"]}");
              countriesModel = CountriesModel.fromJson(r.object);

              log("countries ${countriesModel.data}");
              List responseList = r.object["data"];
              countriesList = responseList
                  .map((e) => CountryDataModel.fromJson(e))
                  .toList();

              ///todo
              countriesList = [countriesList.first,countriesList[1],countriesList[3]];
              log("countries list length ${countriesList.length}");
              // setCountry(
              //   profileController.model.value?.country?.name,
              // );
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
