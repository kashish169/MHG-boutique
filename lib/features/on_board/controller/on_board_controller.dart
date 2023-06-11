import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/core/storage/storage_pref.dart';

import '../model/country_model.dart';
import '../model/language_model.dart';
import '../view/widgets/select_language.dart';
import '../view/widgets/selecte_country.dart';

class OnboardController extends GetxController {
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
  List<CountryModel> countryList = [
    CountryModel(
      name: 'United Arab Emirates',
      image: AppAssets.uaeFlage,
    ),
    CountryModel(image: AppAssets.sudiFlage, name: 'Saudi Arabia'),
    CountryModel(image: AppAssets.kuwaitFalge, name: 'Kuwait'),
    CountryModel(image: AppAssets.quatrFlage, name: 'Qatar'),
    CountryModel(image: AppAssets.omanFlage, name: 'Oman')
  ];
  String selectedLang = 'English';
  List<LanguageModel> langList = [
    LanguageModel(name: 'English', image: AppAssets.ukFlag),
    LanguageModel(name: 'Arabic', image: AppAssets.uaeFlage),
  ];
  PageController pageController = PageController();
  RxInt activeIndex = 0.obs;
  Future isFirstLaunch() async {
    await StoragePref.setbool(
      key: 'isfirst',
      value: false,
    );
  }

  @override
  void onInit() {
    isFirstLaunch();
    super.onInit();
  }

  selectCountry(String country) {
    selectedCountry = country;
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
