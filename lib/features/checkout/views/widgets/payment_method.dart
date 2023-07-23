import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/pages/payment_methods_page.dart';
import 'package:mhg/features/checkout/views/widgets/redeem_card_button.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<CheckoutController>(builder: (checkoutController) {
      if (checkoutController.isLoadingPaymentMethods.isTrue) {
        return LoadingThreeBounce(
          color: AppColors.primary,
        );
      } else if (checkoutController.isLoadingPaymentMethods.isTrue) {
        return RetryButton(onTap: () => checkoutController.getPaymentMethods());
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Payment Method',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 15,
                    color: AppColors.label,
                  ),
            ),
          ),
          ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              reverse: true,
              itemCount: checkoutController.paymentMethodsList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    checkoutController.paymentMethodIndex.value = index;
                    checkoutController.paymentMethodValue.value =
                        checkoutController.paymentMethodsList[index].slug;
                    log(checkoutController.paymentMethodsList[index].slug);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Padding(
                          padding: const EdgeInsetsDirectional.only(start: 8),
                          child: Radio(
                            value: true,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            groupValue:
                                checkoutController.paymentMethodIndex.value ==
                                        index
                                    ? true
                                    : false,
                            onChanged: (val) {
                              checkoutController.paymentMethodIndex.value =
                                  index;
                              checkoutController.paymentMethodValue.value =
                                  checkoutController
                                      .paymentMethodsList[index].slug;
                              log(checkoutController
                                  .paymentMethodsList[index].slug);
                            },
                          ),
                        ),
                      ),
                      Text(
                        checkoutController.paymentMethodsList[index].name,
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 13,
                                  color: AppColors.label,
                                ),
                      ),
                    ],
                  ),
                );
              }),
          AnimatedSize(
            duration: const Duration(milliseconds: 150),
            child: Visibility(
              visible: checkoutController.paymentMethodValue.value == "TAP",
              child: InkWell(
                onTap: () {
                  Get.toNamed(PaymentMethodsPage.routeName);
                },
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 15,
                    start: 30,
                    end: 40,
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: checkoutController
                                .userPaymentMethodsCardsList.isEmpty
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
                                    checkoutController.getCardIcon(
                                      checkoutController.userSelectedCardModel
                                          .value?.cardType,
                                    ),
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${checkoutController.userSelectedCardModel.value?.cardType}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          fontSize: 14,
                                          color: AppColors.mediumLabel,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'ending ${checkoutController.getCodedNumber(checkoutController.userSelectedCardModel.value?.cardNumber)}',
                                      maxLines: null,
                                      overflow: TextOverflow.fade,
                                      softWrap: true,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            fontSize: 14,
                                            color: AppColors.mediumLabel,
                                            fontWeight: FontWeight.bold,
                                          ),
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
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: RedeemCardButton(),
          ),
        ],
      );
    });
  }
}
