import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/app_dimensions.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';
import '../../controller/setting_controller.dart';
import '../widgets/custom_privacy_widget.dart';

class PrivacyPolicyPage extends StatelessWidget {
  PrivacyPolicyPage({super.key});
  final SettingController controller = Get.find();
  static String routeName = '/privacy_policy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Privacy Policy"),
      bottomNavigationBar: const BottomNavBarWidget(),
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
                    title: controller.privacyModel.location,
                    subTitle: controller.privacyModel.englishDescription),
      ),
    );
  }
}
