import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
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
  late String selctedCountryFlage;
  List<CountryModel> countryList = [];
  String selectedLang = 'English';
  List<LanguageModel> langList = [
    LanguageModel(name: 'English', image: AppAssets.ukFlag),
    LanguageModel(name: 'Arabic', image: AppAssets.uaeFlage),
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
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          var stats = r.object['isSuccessful'];
          log("Privacy Status Code $statusCode");
          if (stats == true) {
            List json = r.object['data'];
            countryList = json.map((e) => CountryModel.fromJson(e)).toList();
            selctedCountryFlage = countryList[0].flagLink;
          } else {
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

  selectCountry(String country, String countryFlage) {
    selectedCountry = country;
    selctedCountryFlage = countryFlage;
    update();
  }

  selectLanguage(String language) {
    selectedLang = language;
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
