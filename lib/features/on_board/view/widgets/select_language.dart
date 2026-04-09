import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/custom_bottom_sheet.dart';
import '../../controller/on_board_controller.dart';
import 'custom_value_selctor.dart';

class SelectLanguageView extends StatelessWidget {
  SelectLanguageView({super.key, this.indexChosen});
  final int? indexChosen;
  final OnboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardController>(
      builder: (controller) => CustomBottomSheet(
          height: 280,
          selectText: "Select Language".tr,
          valueWidget: ListView.builder(
            itemCount: controller.langList.length,
            itemBuilder: (context, index) => CustomValueSelector(
              textValue: controller.langList[index].name,
              imageAsset: true,
              isSelectCountry: false,
              onChange: (val) {
                controller.selectLanguage(controller.langList[index].name);
                Navigator.pop(context);
              },
              selected: controller.langList[index].name,
              groupValue: controller.selectedLang.value,
              image: controller.langList[index].image,
            ),
          )),
    );
  }
}
