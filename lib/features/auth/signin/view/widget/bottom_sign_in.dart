import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import '../../../../../core/helper/app_helper.dart';
import '../../../../../widgets/primary_button.dart';
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
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 25,
            ),
            child: PrimaryButton(
              color: AppColors.secondary,
              title: 'Login',
              height: 50,
              width: double.infinity,

              onTap: () {
                controller.isOTP.trigger(false);
                if (controller.formKey.currentState!.validate()) {
                  AppHelper.closeKeyboard();
                  controller.signInWithOutOtp();
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
                    title: 'Login with Otp',
                    height: 50,
                    width: double.infinity,
                    color: AppColors.secondary,
                    onTap: () {
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
                "Don't have an account?",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: const Color(0XFF666666)),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(SignUpPage.routeName, arguments: {
                    'country_code': controller.countryCode.value,
                    'flag':controller.firstCountryFlag.isNotEmpty?controller.firstCountryFlag.value:controller.countryFlag.value,
                    'isFirstFlag':controller.firstCountryFlag.isNotEmpty

                  });
                },
                child: Text(
                  "Sign Up",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Colors.red,
                      ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
