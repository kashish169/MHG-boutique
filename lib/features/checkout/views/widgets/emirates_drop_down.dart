import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import '../../../../app/app.dart';
import '../../../../constants/app_colors.dart';

class CountriesDropDown extends StatefulWidget {
  const CountriesDropDown({super.key, required this.cities});

  final List<String> cities;
  @override
  State<CountriesDropDown> createState() => _CountriesDropDownState();
}

class _CountriesDropDownState extends State<CountriesDropDown> {
  final TextEditingController _searchController = TextEditingController();
  final controller = Get.find<CheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const SizedBox(height: 20),
        // Text(
        //   'Emirate',
        //   style: Theme.of(context)
        //       .textTheme
        //       .displaySmall!
        //       .copyWith(fontSize: 16, color: AppColors.lightGray2),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            value: controller.selectedCity,
            onChanged: (value) {
              controller.setCity(value);
              setState(() {});
            },
            hint: Text(
              App.countryId == 1 ? 'Select Emirate' : "Select City",
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: widget.cities
                .map(
                  (e) => DropdownMenuItem<String>(
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
            dropdownSearchData: DropdownSearchData(
              searchController: _searchController,
              searchInnerWidgetHeight: 50,
              searchInnerWidget: Container(
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
                    hintText: 'Search',
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
                return (item.value.toString().contains(
                      searchValue,
                    ));
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
