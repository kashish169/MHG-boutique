import 'dart:developer';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/controller/sign_in_controller.dart';


showCountries(BuildContext context) {
  final controller = Get.find<SignInController>();
  return showCountryPicker(
    context: context,
    countryListTheme: CountryListThemeData(
      flagSize: 25,
      backgroundColor: Colors.white,
      searchTextStyle: Theme.of(context).textTheme.headline3,
      textStyle: Theme.of(context).textTheme.headline3,
      bottomSheetHeight: 500,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      inputDecoration: InputDecoration(
        labelText: 'Search',
        hintText: 'Start typing to search',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xFF8C98A8).withOpacity(0.2),
          ),
        ),
      ),
    ),
    showPhoneCode: true,
    onSelect: (country) {
      controller.countryFlag.value = country.flagEmoji;
      controller.countryCode.value = "+${country.phoneCode}";
      log(country.flagEmoji);
    },
  );
}
