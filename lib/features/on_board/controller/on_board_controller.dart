import 'dart:developer';
import 'dart:io';
import 'dart:convert';

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
  RxString selectedLangFlag = AppAssets.ukFlag.obs;
  List<LanguageModel> langList = [
    LanguageModel(
        name: 'English', image: AppAssets.ukFlag, showName: 'English'.tr),
    LanguageModel(
        name: 'العربية', image: AppAssets.uaeFlage, showName: 'Arabic'.tr),
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
      selectedLang.value = "English";
      selectedLangFlag = AppAssets.ukFlag.obs;
    } else {
      selectedLang.value = "Arabic";
      selectedLangFlag = AppAssets.uaeFlage.obs;
    }
    super.onInit();
  }

  getCountries() async {
    debugPrint('getCountries: start');
    try {
      isLoading = true;
      isError = false;
      update();
      Either<Failure, ApiResponse> results = await unBoardRepo.getCountryData();
      isLoading = false;
      update();
      // Await fold so errors inside the async right branch are caught by try/catch
      // (otherwise RangeError/parsing errors become "unhandled async" and skip catch).
      await results.fold<Future<void>>(
        (l) async {
          isError = true;
          update();
          log('getCountries: Left Failure -> ${l.message}', name: 'OnboardController');
          debugPrint('getCountries: repo failure ${l.message}');
          AppToasts.errorToast(l.message);
        },
        (r) async {
          debugPrint(
            'getCountries: raw response ${jsonEncode(r.object)}',
          );
          final statusCode = r.object['code'];
          final message = r.object['message'];
          final stats = r.object['isSuccessful'];
          log(
            'getCountries: API code=$statusCode isSuccessful=$stats message=$message',
            name: 'OnboardController',
          );
          debugPrint(
            'getCountries: API code=$statusCode isSuccessful=$stats message=$message',
          );
          if (stats == true) {
            final List json = r.object['data'];
            countryList = json.map((e) => CountryModel.fromJson(e)).toList();
            log(
              'getCountries: parsed ${countryList.length} countries',
              name: 'OnboardController',
            );

            ///todo
            if (countryList.length >= 6) {
              countryList = [
                countryList.first,
                countryList[1],
                countryList[3],
                countryList[5]
              ];
            } else {
              log(
                'getCountries: need 6+ countries for subset, got ${countryList.length}',
                name: 'OnboardController',
              );
              debugPrint(
                'getCountries: skipping subset (need 6+, have ${countryList.length})',
              );
            }
            if (countryList.isNotEmpty) {
              selectedCountryFlage = countryList.first.flagLink;
              App.countryName = countryList.first.name;
              App.flagLink = countryList.first.flagLink;
              App.countryCode = countryList.first.prefix;
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
              if (App.token.isNotEmpty) {
                Api.authorizedheaders = {
                  'Content-Type': 'application/json',
                  'Authorization': "Bearer ${App.token}",
                  'Country-Id': "${App.countryId}",
                  'lang': Get.locale!.languageCode,
                  'android-version': App.version,
                  'ios-version': App.version,
                  'env': Platform.isAndroid ? 'android' : 'ios'
                };
              }
            }
          } else {
            isError = true;
            update();
            final msg = message?.toString() ?? 'Unknown error';
            log('getCountries: API unsuccessful -> $msg', name: 'OnboardController');
            debugPrint('getCountries: API unsuccessful $msg');
            AppToasts.errorToast(msg);
          }
        },
      );
    } catch (e, st) {
      isError = true;
      update();
      log(
        'getCountries: exception',
        name: 'OnboardController',
        error: e,
        stackTrace: st,
      );
      debugPrint('getCountries: catch $e\n$st');
      AppToasts.errorToast('$e');
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
    App.countryCode = prefix;
    App.flagLink = countryFlage;
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
      'lang': Get.locale!.languageCode,
      'android-version': App.version,
      'ios-version': App.version,
      'env': Platform.isAndroid ? 'android' : 'ios'
    };
    Api.headers = {
      'Content-Type': 'application/json',
      'Country-Id': "${App.countryId}",
      'lang': Get.locale!.languageCode,
      'android-version': App.version,
      'ios-version': App.version,
      'env': Platform.isAndroid ? 'android' : 'ios'
    };
    //  }

    update();
  }

  selectLanguage(String language) async {
    selectedLang.value = language;
    if (selectedLang.value == "English") {
      selectedLangFlag = AppAssets.ukFlag.obs;
      await AppHelper.updateLanguage(const Locale("en_US"));
    } else {
      selectedLangFlag = AppAssets.uaeFlage.obs;
      await AppHelper.updateLanguage(const Locale("ar_AE"));
    }
    update();
  }

  openselcetCountry() {
    Get.bottomSheet(
      SelectCountryView(),
    );
  }

  openselcetLangage({int? index}) {
    Get.bottomSheet(SelectLanguageView(indexChosen: index));
  }
}
