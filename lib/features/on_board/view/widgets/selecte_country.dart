import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/custom_bottom_sheet.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../controller/on_board_controller.dart';
import 'custom_value_selctor.dart';

class SelectCountryView extends StatelessWidget {
  SelectCountryView({super.key});
  final OnboardController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardController>(
        builder: (controller) => CustomBottomSheet(
            height: AppDimensions.screenHeight(context) / 2,
            selectText: "Select your Country",
            valueWidget: controller.isLoading
                ? const LoadingWidget(
                    isWhite: true,
                  )
                : controller.isError
                    ? RetryButton(onTap: () {
                        controller.getCountries();
                      })
                    : ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                          color: AppColors.grey,
                        ),
                        itemCount: controller.countryList.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            controller.selectCountry(
                              id: controller.countryList[index].id,
                              prefix: controller.countryList[index].prefix,
                              country: controller.countryList[index].name,
                              countryFlage:
                                  controller.countryList[index].flagLink,
                              currency: controller
                                  .countryList[index].currency.currency,
                            );
                          },
                          child: CustomValueSelector(
                            textValue: controller.countryList[index].name,
                            isSelectCountry: true,
                            onChange: (val) {
                              controller.selectCountry(
                                prefix: controller.countryList[index].prefix,
                                id: controller.countryList[index].id,
                                country: controller.countryList[index].name,
                                countryFlage:
                                    controller.countryList[index].flagLink,
                                currency: controller
                                    .countryList[index].currency.currency,
                              );
                            },
                            selected: controller.countryList[index].name,
                            groupValue: controller.selectedCountry,
                            image: controller.countryList[index].flagLink,
                          ),
                        ),
                      )));
  }
}
