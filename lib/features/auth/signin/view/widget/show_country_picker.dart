import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

showCountries(BuildContext context, void Function(Country) onSelect) {
  return showCountryPicker(
    context: context,
    ///todo
    countryFilter: <String>['AE', 'KW','OM'],
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
    onSelect: onSelect,
  );
}
