// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/widgets/primary_button.dart';

import '../../../../app/app.dart';
import '../../../checkout/controllers/checkout_controller.dart';
import '../../controller/my_cart_controller.dart';
import 'guest_select_city_dialog.dart';

class CheckOutButton extends StatelessWidget {
  CheckOutButton({super.key});
  final MyCartController controller = Get.find();
  final checkoutController = Get.find<CheckoutController>();
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
              //this comment will change later to show cities in guest mode for shipping message
              // if (App.token.isNotEmpty) {
              controller.checkForGiveAwayItems();
              // } else {
              // guestSelectCityDialog(
              //   context: context,
              //   onTap: () {
              //     if (checkoutController.selectedCity != null) {
              //       Get.back();
              //       controller.checkForGiveAwayItems();
              //     }
              //   },
              // );
              // }
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
