import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/app_dimensions.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../controller/setting_controller.dart';
import '../widgets/custom_privacy_widget.dart';

class PraivacyPage extends StatelessWidget {
  PraivacyPage({super.key});
  final SettingController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Privacy Policy"),
      body: GetX<SettingController>(
        builder: (controller) => controller.isLoadingPrivacy.value
            ? Column(
                children: [
                  SizedBox(
                    height: AppDimensions.screenHeight(context) * 0.4,
                  ),
                  const LoadingWidget(),
                ],
              )
            : controller.isErrorPrivacy.value
                ? Column(
                    children: [
                      SizedBox(
                        height: AppDimensions.screenHeight(context) * 0.4,
                      ),
                      RetryButton(onTap: () => controller.getPraivacyData()),
                    ],
                  )
                : CustomPrivacyWidget(
                    title: controller.praivacyModel.location,
                    subTitle: controller.praivacyModel.englishDescription),
      ),
    );
  }
}
