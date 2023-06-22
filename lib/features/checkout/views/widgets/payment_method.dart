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
      () => (checkoutController.isLoading.isFalse)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Payment Method',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                          color: AppColors.label,
                        ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(PaymentMethodsPage.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 10,
                      start: 20,
                      end: 30,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: checkoutController.cardNumber.value == ''
                              ? Text(
                                  'Add Payment Method',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        fontSize: 14,
                                        color: AppColors.mediumLabel,
                                        fontWeight: FontWeight.bold,
                                      ),
                                )
                              : Row(
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
                        Image.asset(
                          AppAssets.arrowForward,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : (checkoutController.isError.isTrue)
              ? RetryButton(
                  onTap: () => checkoutController.getAllPaymentMethods(),
                )
              : const LoadingWidget(),
    );
  }
}
