import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/forgot_password/view/pages/forget_view.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../core/helper/app_helper.dart';
import '../../../../../widgets/custom_form_field.dart';
import '../../controller/sign_in_controller.dart';
import 'country_button_pick.dart';

class SignInForm extends StatelessWidget {
  SignInForm({super.key});

  final SignInController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetX<SignInController>(builder: (controller) {
      return Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          controller.logWithNumber.value
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: CustomFormField(
                    validator: (value) {
                      return AppHelper.validatePhone(
                          value!, controller.countryCode.value);
                    },
                    controller: controller.phone,
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.phone.clear();
                      },
                      icon: Image.asset(
                        AppAssets.close,
                        height: 22,
                      ),
                    ),
                    prefixWidget: const CountryButtonPick(),
                    inputType: TextInputType.number,
                    obscure: false,
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: CustomFormField(
                    hint: 'Email address'.tr,
                    controller: controller.email,
                    suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.asset(
                          AppAssets.message,
                          height: 14,
                        )),
                    inputType: TextInputType.text,
                    obscure: false,
                    validator: (val) {
                      if (controller.logWithEmail.isTrue) {
                        return AppHelper.validation(val!, 1, 500, 'email');
                      }
                      return null;
                    },
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: CustomFormField(
              hint: 'Password'.tr,
              controller: controller.password,
              suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                      onTap: () {
                        controller.changeVisibility();
                      },
                      child: Icon(controller.isVisable.value
                          ? Icons.visibility
                          : Icons.visibility_off_rounded))),
              inputType: TextInputType.multiline,
              obscure: controller.isVisable.value,
              validator: (value) {
                if (controller.isOTP.isFalse) {
                  return controller.validatePassword(value!);
                }
                return null;
              },
            ),
          ),
        ],
      );
    });
  }
}
