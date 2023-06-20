// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';

import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/pages/payment_methods_page.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({super.key});
  final CheckoutController checkoutController = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (checkoutController.isLoading.value == false &&
              checkoutController.isError.value == false)
          ? SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.only(bottom: 17),
                child: ListTile(
                  onTap: () {
                    Get.toNamed(PaymentMethodsPage.routeName);
                  },
                  title: Text(
                    'Payment Method',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                          color: AppColors.label,
                        ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.014,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          AppAssets.master,
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          ' ${checkoutController.cardType} ending ${checkoutController.cardNumber}',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 14,
                                color: AppColors.mediumLabel,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  trailing: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: AppColors.lightGray,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ),
                ),
              ),
            )
          : (checkoutController.isLoading.value == false &&
                  checkoutController.isError.value == true)
              ? RetryButton(
                  onTap: () => checkoutController.getAllPaymentMethods(),
                )
              : LoadingWidget(),
    );
  }
}
