// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/pages/payment_methods_page.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  final CheckoutController checkoutController = Get.put(CheckoutController());
RadioGroupController myController = RadioGroupController();

  final ProfileController profileController = Get.find<ProfileController>();

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
                checkoutController.paymentMethodsModel.data == null ||
                        checkoutController.paymentMethodsModel.data!.isEmpty
                    ? const SizedBox()
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio(
                                    value: "COD",
                                    groupValue:
                                        checkoutController.codOrCard.value,
                                    onChanged: (val) {
                                      checkoutController.codOrCard("COD");
                                    }),
                                Text(
                                  "COD",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        fontSize: 16,
                                        color: AppColors.label,
                                      ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio(
                                    value: checkoutController
                                        .onlinePaymentMethodName.value,
                                    groupValue:
                                        checkoutController.codOrCard.value,
                                    onChanged: (val) {
                                      checkoutController.codOrCard(val);
                                    }),
                                Text(
                                  checkoutController
                                      .onlinePaymentMethodName.value,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        fontSize: 16,
                                        color: AppColors.label,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                const SizedBox(height: 15),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Radio(
                        value: !checkoutController.hasRedeem.value,
                        groupValue: checkoutController.hasRedeem.value,
                        onChanged: (val) {
                          checkoutController.hasRedeem(val);
                         checkoutController.orderPrice(
                            profileController.model.value!.countryId,
                            checkoutController.codeController.text.trim(),
                            isRedeem: val!,
                          ); 
                        }),
                    Text(
                      'Redeem ${profileController.model.value!.hearts!} Pts',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 16,
                            color: AppColors.label,
                          ),
                    ),
                  ],
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
