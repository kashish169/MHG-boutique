import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/auth/signin/controller/sign_in_controller.dart';
import 'package:mhg/widgets/primary_button.dart';

class LogMethodButton extends StatelessWidget {
  LogMethodButton({super.key});
  final SignInController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetX<SignInController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: PrimaryButton(
                  title: 'Phone Number'.tr,
                  reverseColor: !controller.logWithNumber.value,
                  height: 45,
                  width: controller.numberLogwidth.value,
                  color: controller.logWithNumber.value == true
                      ? AppColors.primary
                      : AppColors.secondary,
                  fontColor:
                      //  controller.logWithNumber.value == true
                      //     ? AppColors.secondary
                      //     :
                      AppColors.white,
                  onTap: () {
                    AppHelper.closeKeyboard();
                    controller.logWithNum();
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: PrimaryButton(
                  title: 'Email'.tr,
                  height: 45,
                  reverseColor: !controller.logWithEmail.value,
                  width: controller.emailLogwidth.value,
                  color: controller.logWithEmail.value == true
                      ? AppColors.primary
                      : AppColors.secondary,
                  fontColor:
                      //  controller.logWithEmail.value == true
                      //     ? AppColors.secondary
                      //     :
                      AppColors.white,
                  onTap: () {
                    AppHelper.closeKeyboard();
                    controller.loginWithEmail();
                  },
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
