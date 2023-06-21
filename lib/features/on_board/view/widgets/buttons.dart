import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/auth/signin/view/pages/sign_in_page.dart';
import 'package:mhg/features/on_board/controller/on_board_controller.dart';

import 'onBoard_button.dart';

class OnBoardButtons extends StatelessWidget {
  const OnBoardButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardController>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: OnBoardButton(
                title: 'Login',
                height: 50,
                radius: 10,
                color: AppColors.dGreen,
                onTap: () {
                  Get.offAllNamed(
                    SignInPage.routeName,
                    arguments: controller.selectedCountry,
                  );
                },
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: OnBoardButton(
            title: 'Guest',
            height: 50,
            radius: 10,
            color: AppColors.dGreen,
            onTap: () {},
          )),
        ],
      ),
    );
  }
}
