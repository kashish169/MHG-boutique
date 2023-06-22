// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

import 'place_order_button.dart';

class PromoCode extends StatelessWidget {
  PromoCode({super.key});
  
  final CheckoutController checkoutController = Get.put(CheckoutController());
  final ProfileController controller = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Image.asset(
                  AppAssets.tag,
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Add Promo Code',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.label,
                      ),
                ),
              ],
            ),
            subtitle: Text(
              'If apply no points will add be added',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColors.lightLabel2, fontSize: 14, height: 1.7),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 44,
                child: CustomFormField(
                  inputType: TextInputType.text,
                  obscure: false,
                  hint: 'Enter Code Here',
                  controller: checkoutController.codeController,
                ),
              ),
              Obx(
                () => (checkoutController.isLoadingPromo.value == false &&
                        checkoutController.isErrorPromo.value == false)
                    ? PlaceOrderButton(
                        title: 'Apply',
                        width: MediaQuery.of(context).size.width * 0.3,
                        hasIcon: false,
                        onPress: () {
                          checkoutController.orderPrice(
                              controller.model.value!.countryId,
                              checkoutController.codeController.text);
                        })
                    : (checkoutController.isLoadingPromo.value == false &&
                            checkoutController.isErrorPromo.value == true)
                        ? RetryButton(
                            onTap: () => checkoutController.orderPrice(
                                controller.model.value!.countryId,
                                checkoutController.codeController.text),
                          )
                        : LoadingWidget(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
