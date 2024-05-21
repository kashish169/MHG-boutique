import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';

class FeedBackDialog extends StatelessWidget {
  const FeedBackDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Form(
        key: controller.feedbackFormKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Message".tr,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomFormField(
                    hint: 'Message'.tr,
                    multiLine: true,
                    controller: controller.feedback,
                    inputType: TextInputType.text,
                    obscure: false,
                    validator: (val) {
                      return AppHelper.validation(
                        val!,
                        1,
                        500,
                        '',
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                PrimaryButton(
                  color: AppColors.secondary,
                  title: 'Send'.tr,
                  width: double.infinity,
                  height: 50,
                  onTap: () {
                    if (controller.feedbackFormKey.currentState!.validate()) {
                      AppHelper.closeKeyboard();
                      controller.sendFeedbackReq();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
