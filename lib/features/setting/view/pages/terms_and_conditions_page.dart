import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/setting/controller/setting_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../widgets/custom_privacy_widget.dart';

class TermsAndConidtionsPage extends StatelessWidget {
  TermsAndConidtionsPage({super.key});
  final SettingController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Terms & Conditions"),
      body: SingleChildScrollView(
        child: GetX<SettingController>(
          builder: (controller) => controller.isLoadingTerms.value
              ? Column(
                  children: [
                    SizedBox(
                      height: AppDimensions.screenHeight(context) * 0.4,
                    ),
                    const LoadingWidget(),
                  ],
                )
              : controller.isErrorTerms.value
                  ? Column(
                      children: [
                        SizedBox(
                          height: AppDimensions.screenHeight(context) * 0.4,
                        ),
                        RetryButton(
                            onTap: () =>
                                controller.getTermsAndConditionsData()),
                      ],
                    )
                  : CustomPrivacyWidget(
                      title: controller.termsModel.location,
                      subTitle: controller.termsModel.englishDescription),
        ),
      ),
    );
  }
}
