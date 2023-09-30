import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/core/storage/storage_pref.dart';

import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../model/country_model.dart';
import '../model/language_model.dart';
import '../repository/on_board_repo.dart';
import '../repository/on_board_repo_impl.dart';
import '../view/widgets/select_language.dart';
import '../view/widgets/selecte_country.dart';

class OnboardController extends GetxController {
  late UnBoardRepo unBoardRepo;

  OnboardController() {
    unBoardRepo = Get.find<UnBoardRepoImpl>();
  }

  List<String> imageUrl = [
    'assets/images/start1.jpg',
    'assets/images/start2.jpg',
    'assets/images/start3.jpg',
  ];
  List<String> textOne = [
    'PERSONAL CHEF\'S NEAR YOU',
    'PERSONAL CHEF\'S NEAR YOU',
    'PERSONAL CHEF\'S NEAR YOU',
  ];
  List<String> textTwo = [
    'LOREM IPSUM DOLOR SIT AMET \n CONSETETUR SADIPSCING ELITER',
    'LOREM IPSUM DOLOR SIT AMET \n CONSETETUR SADIPSCING ELITER',
    'LOREM IPSUM DOLOR SIT AMET \n CONSETETUR SADIPSCING ELITER',
  ];
  String selectedCountry = 'United Arab Emirates';
  int selectedCountryId = 1;
  String selectedCountryCode = '+971';
  String? selectedCountryFlage;
  List<CountryModel> countryList = [];
  RxString selectedLang = 'English'.obs;
  List<LanguageModel> langList = [
    LanguageModel(
        name: 'English', image: AppAssets.ukFlag, showName: 'English'.tr),
    LanguageModel(
        name: 'Arabic'.tr, image: AppAssets.uaeFlage, showName: 'Arabic'.tr),
  ];
  PageController pageController = PageController();
  RxInt activeIndex = 0.obs;
  bool isLoading = false;
  bool isError = false;
  Future isFirstLaunch() async {
    await StoragePref.setbool(
      key: 'isfirst',
      value: false,
    );
  }

  @override
  void onInit() {
    getCountries();
    isFirstLaunch();
    if (App.lang == "en") {
      selectedLang.value = "ENGLISH";
    } else {
      selectedLang.value = "ARABIC";
    }
    super.onInit();
  }

  getCountries() async {
    try {
      isLoading = true;
      isError = false;
      update();
      Either<Failure, ApiResponse> results = await unBoardRepo.getCountryData();
      isLoading = false;
      update();
      results.fold(
        (l) {
          isError = true;
          update();
          AppToasts.errorToast(l.message);
          log("onBoard ${l.message}");
        },
        (r) async {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          var stats = r.object['isSuccessful'];
          log("Privacy Status Code $statusCode");
          if (stats == true) {
            List json = r.object['data'];
            countryList = json.map((e) => CountryModel.fromJson(e)).toList();
            ///todo
            log(countryList.toString());
            countryList=[countryList.first,countryList[1]];
            if (countryList.isNotEmpty) {
              selectedCountryFlage = countryList.first.flagLink;
              App.countryName = countryList.first.name;
              App.flagLink=countryList.first.flagLink;
              App.countryCode=countryList.first.prefix;
              App.countryId = countryList.first.id;
              App.currency = countryList.first.currency.currency;
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
              if(App.token.isNotEmpty){
                Api.authorizedheaders = {
                  'Content-Type': 'application/json',
                  'Authorization': "Bearer ${App.token}",
                  'Country-Id': "${App.countryId}",
                };
              }
            }
          } else {
            isError = true;
            update();
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e) {
      isError = true;
      update();
      AppToasts.errorToast("$e");
      print("catch error" "$e");
    }
  }

  selectCountry({
    required String country,
    required String prefix,
    required String countryFlage,
    required int id,
    required String currency,
  }) async {
    selectedCountry = country;
    selectedCountryFlage = countryFlage;
    selectedCountryId = id;
    selectedCountryCode = prefix;
    App.countryId = selectedCountryId;
    App.currency = currency;
    App.countryName = selectedCountry;
    App.countryCode=prefix;
    App.flagLink=countryFlage;
    log("__$selectedCountry ID IS :${App.countryId}  Currency Is : ${App.currency}");
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
    // if(App.token.isNotEmpty){
      Api.authorizedheaders = {
        'Content-Type': 'application/json',
        'Authorization': "Bearer ${App.token}",
        'Country-Id': "${App.countryId}",
      };
    Api.headers = {
      'Content-Type': 'application/json',
      'Country-Id': "${App.countryId}",
    };
  //  }

    update();
  }

  selectLanguage(String language) async {
    selectedLang.value = language;
    if (selectedLang.value == "English") {
      await AppHelper.updateLanguage(const Locale("en_US"));
    } else {
      await AppHelper.updateLanguage(const Locale("ar_AE"));
    }
    update();
  }

  openselcetCountry() {
    Get.bottomSheet(
      SelectCountryView(),
    );
  }

  openselcetLangage() {
    Get.bottomSheet(SelectLanguageView());
  }
}
