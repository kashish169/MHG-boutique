import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_toasts.dart';

import '../../../../../core/helper/app_helper.dart';
import '../../../../../widgets/primary_button.dart';
import '../../../../forgot_password/view/pages/forget_view.dart';
import '../../../otp/view/pages/otp.dart';
import '../../../sign_up/view/pages/sign_up_view.dart';
import '../../controller/sign_in_controller.dart';

class BottomSignIn extends StatelessWidget {
  BottomSignIn({super.key});

  final SignInController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetX<SignInController>(builder: (controller) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Checkbox(
                onChanged: (val) {
                  controller.isAcceptTermsAndCondition.value =
                      !controller.isAcceptTermsAndCondition.value;
                },
                value: controller.isAcceptTermsAndCondition.value,
                activeColor: AppColors.primary,
                checkColor: AppColors.white,
              ),
              Text("I agree to the",
                  style: Theme.of(context).textTheme.displaySmall),
              TextButton(
                child: Text(
                  "Terms & Conditions",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 14, decoration: TextDecoration.underline),
                ),
                onPressed: () {
                  AppHelper.launchURL(
                      'www.mhgboutique.com/pages/orders-returns', 'https');
                },
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 25,
            ),
            child: PrimaryButton(
              color: AppColors.secondary,
              title: 'Login'.tr,
              height: 50,
              width: double.infinity,
              onTap: () {
                if (controller.isAcceptTermsAndCondition.value == true) {
                  controller.isOTP.trigger(false);
                  if (controller.formKey.currentState!.validate()) {
                    AppHelper.closeKeyboard();
                    controller.signInWithOutOtp();
                  }
                } else {
                  AppToasts.errorToast('Please agree Terms and Condition');
                }
              },
            ),
          ),
          controller.logWithNumber.value
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: PrimaryButton(
                    title: 'Login with OTP'.tr,
                    height: 50,
                    width: double.infinity,
                    color: AppColors.secondary,
                    onTap: () {
                      if (controller.isAcceptTermsAndCondition.value == true) {
                        controller.isOTP.trigger(true);
                        if (controller.formKey.currentState!.validate()) {
                          AppHelper.closeKeyboard();
                          String phoneNumber = controller.phone.text.trim();
                          Get.toNamed(
                            OtpPage.routeName,
                            arguments: {
                              "type": "signin",
                              "countryCode": controller.countryCode.value,
                              "phone": phoneNumber,
                            },
                          );
                        }
                      } else {
                        AppToasts.errorToast(
                            'Please agree Terms and Condition');
                      }
                    },
                  ),
                )
              : const SizedBox(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?".tr,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: const Color(0XFF666666)),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(SignUpPage.routeName, arguments: {
                    'country_code': controller.countryCode.value,
                    'flag': controller.firstCountryFlag.isNotEmpty
                        ? controller.firstCountryFlag.value
                        : controller.countryFlag.value,
                    'isFirstFlag': controller.firstCountryFlag.isNotEmpty
                  });
                },
                child: Text(
                  "Sign Up".tr,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Colors.red,
                      ),
                ),
              ),
            ],
          ),
          controller.logWithEmail.isTrue
              ? GestureDetector(
                  onTap: () {
                    Get.toNamed(ForgetPasswordView.routeName,
                        arguments: [controller.email.text, 'email']);
                  },
                  child: Text(
                    "Forgot Password?".tr,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.secondary,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    Get.toNamed(ForgetPasswordView.routeName,
                        arguments: [controller.phone.text, 'phone']);
                  },
                  child: Text(
                    "Forgot Password?".tr,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.secondary,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
        ],
      );
    });
  }
}
