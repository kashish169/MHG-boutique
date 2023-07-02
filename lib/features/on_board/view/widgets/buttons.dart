import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/auth/signin/view/pages/sign_in_page.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import 'package:mhg/features/on_board/controller/on_board_controller.dart';
import 'onBoard_button.dart';

class OnBoardButtons extends StatelessWidget {
  const OnBoardButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: OnBoardButton(
                  title: 'Login'.tr,
                  height: 50,
                  radius: 10,
                  color: AppColors.dGreen,
                  onTap: controller.isLoading
                      ? () {}
                      : () {
                          Get.offAllNamed(
                            SignInPage.routeName,
                            arguments: {
                              'country': controller.selectedCountry,
                              'is_guest': false,
                              'flag': controller.selectedCountryFlage,
                              'country_code': controller.selectedCountryCode,
                              'id': controller.selectedCountryId,
                            },
                          );
                        },
                )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: OnBoardButton(
              title: 'Guest'.tr,
              height: 50,
              radius: 10,
              color: AppColors.dGreen,
              onTap: controller.isLoading
                  ? () {}
                  : () {
                      Get.offAllNamed(
                        MainWrapper.routeName,
                        arguments: {
                          'country': controller.selectedCountry,
                          'flag': controller.selectedCountryFlage,
                          'country_code': controller.selectedCountryCode
                        },
                      );
                    },
            )),
          ],
        ),
      );
    });
  }
}
