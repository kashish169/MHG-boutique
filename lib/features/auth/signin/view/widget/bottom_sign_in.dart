import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/helper/app_helper.dart';
import '../../../../../widgets/primary_button.dart';
import '../../../sign_up/view/pages/sign_up_view.dart';
import '../../../verification/view/pages/verfication_page.dart';
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
              title: 'Login',
              height: 50,
              width: double.infinity,
              color: const Color(0XFF232323),
              onTap: () {
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
                    color: const Color(0XFF232323),
                    onTap: () {
                      if (controller.formKey.currentState!.validate()) {
                        AppHelper.closeKeyboard();
                        String phoneNumber = controller.phone.text.trim();
                        Get.toNamed(
                          VerificationPage.routeName,
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
                  Get.toNamed(SignUpPage.routeName);
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
