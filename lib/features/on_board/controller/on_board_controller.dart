import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mhg/core/storage/storage_pref.dart';

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
  List countryList = [
    'United Arab Emirates',
    'Saudi Arabia',
    'Kuwait',
    'Qatar',
    'Oman',
  ];
  String selectedLang = 'English';
  List langList = ['English', 'Arabic'];
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
