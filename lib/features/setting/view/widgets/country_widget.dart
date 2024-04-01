import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/setting/controller/setting_controller.dart';

class CountryWidget extends StatelessWidget {
  const CountryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SettingController>();
    return Obx(() => InkWell(
        onTap: () {},
        child: ColoredBox(
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  AppAssets.global,
                  height: 20,
                  color: AppColors.primary,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Country',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const Expanded(child: SizedBox()),
                SizedBox(
                  width: 80,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      style: Theme.of(context).textTheme.displaySmall,
                      isExpanded: false,
                      value: controller.selectedCountry.value,
                      icon: Image.asset(
                        AppAssets.arrowDown,
                        height: 8,
                        color: AppColors.primary,
                      ),
                      items: controller.countriesList.map((items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (newValue) {
                        controller.selectedCountry.value = newValue!.toString();
                        // print(controller.categoryValue.value);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
