import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/custom_bottom_sheet.dart';
import '../../controller/on_board_controller.dart';
import 'custom_value_selctor.dart';

class SelectCountryView extends StatelessWidget {
  SelectCountryView({super.key});
  final OnboardController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardController>(
        builder: (controller) => CustomBottomSheet(
            height: 400,
            selectText: "Select your Country",
            valueWidget: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: AppColors.grey,
              ),
              itemCount: controller.countryList.length,
              itemBuilder: (context, index) => CustomValueSelector(
                textValue: controller.countryList[index].name,
                isSelectCountry: true,
                onChange: (val) {
                  controller.selectCountry(controller.countryList[index].name);
                },
                selected: controller.countryList[index].name,
                groupValue: controller.selectedCountry,
                image: controller.countryList[index].image,
              ),
            )));
  }
}
