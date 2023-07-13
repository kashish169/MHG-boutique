// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/checkout/views/pages/checkout_page.dart';
import 'package:mhg/widgets/primary_button.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          PrimaryButton(
            color: AppColors.secondary,
            height: 44,
            width: 300,
            title: 'Secure Checkout',
            onTap: () {
              AppHelper.closeKeyboard();
              Get.toNamed(CheckoutPage.routeName);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
