import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/auth/signin/view/pages/sign_in_page.dart';
import 'package:mhg/widgets/primary_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: PrimaryButton(
                title: 'login',
                height: 40,
                radius: 10,
                color: Colors.black.withOpacity(.8),
                onTap: () {
                  Get.toNamed(SignInPage.routeName);
                },
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: PrimaryButton(
                title: 'Not Now',
                height: 40,
                radius: 10,
                color: AppColors.primary.withOpacity(.1),
                onTap: () {},
              )),
        ],
      ),
    );
  }
}