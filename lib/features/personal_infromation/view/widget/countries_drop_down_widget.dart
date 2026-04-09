import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/models/countries_model.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/net_image.dart';
import '../../controller/peronal_informatiom_controller.dart';

class CountriesDropDownWidget extends StatefulWidget {
  const CountriesDropDownWidget(
      {super.key,
      required this.isCountry,
      required this.countries,
      required this.cities});
  final bool isCountry;
  final List<CountryDataModel> countries;
  final List<String> cities;
  @override
  State<CountriesDropDownWidget> createState() =>
      _CountriesDropDownWidgetState();
}

class _CountriesDropDownWidgetState extends State<CountriesDropDownWidget> {
  final TextEditingController _searchController = TextEditingController();
  final PersonalInformationController controller = Get.find();
  late final ValueNotifier<String?> _valueNotifier;

  @override
  void initState() {
    super.initState();
    final initial = widget.isCountry
        ? controller.selectedCountry
        : (controller.selectedCity ?? '').isEmpty
            ? null
            : controller.selectedCity;
    _valueNotifier = ValueNotifier<String?>(initial);
  }

  @override
  void dispose() {
    _valueNotifier.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentValue = widget.isCountry
        ? controller.selectedCountry
        : (controller.selectedCity ?? '').isEmpty
            ? null
            : controller.selectedCity;
    if (_valueNotifier.value != currentValue) {
      _valueNotifier.value = currentValue;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          widget.isCountry
              ? "Country".tr
              : controller.countryId.value == 1
                  ? 'Emirate'.tr
                  : 'City'.tr,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: 16, color: AppColors.lightGray2),
        ),
        const SizedBox(
          height: 10,
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            valueListenable: _valueNotifier,
            onChanged: (value) {
              widget.isCountry
                  ? controller.setCountry(value!)
                  : controller.setCity(value);
              _valueNotifier.value = value;
            },
            hint: Text(
              widget.isCountry
                  ? 'Select Country'
                  : controller.countryId.value == 1
                      ? 'Select Emirate'
                      : 'Select City',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: widget.isCountry
                ? widget.countries
                    .map(
                      (item) => DropdownItem<String>(
                        value: item.name,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: NetImage(
                                  image: item.flagLink!,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              TextSpan(
                                text: ' ${item.name!}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 14,
                                      color: AppColors.black3,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList()
                : widget.cities
                    .map(
                      (e) => DropdownItem<String>(
                        value: e,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: ' $e',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 14,
                                      color: AppColors.black3,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
            dropdownSearchData: DropdownSearchData<String>(
              searchController: _searchController,
              searchBarWidgetHeight: 50,
              searchBarWidget: Container(
                height: 50,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 4,
                  right: 8,
                  left: 8,
                ),
                child: TextFormField(
                  expands: true,
                  maxLines: null,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14,
                        color: AppColors.black3,
                      ),
                  controller: _searchController,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    hintText: widget.isCountry ? 'Search' : 'Search',
                    hintStyle:
                        Theme.of(context).textTheme.displaySmall!.copyWith(
                              fontSize: 14,
                              color: AppColors.lightGray2,
                            ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
                return item.value?.toString().toLowerCase().contains(
                      searchValue.toLowerCase(),
                    ) ?? false;
              },
            ),
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                _searchController.clear();
              }
            },
          ),
        ),
      ],
    );
  }
}
