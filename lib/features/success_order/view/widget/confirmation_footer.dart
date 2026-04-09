import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';

import '../../../../app/app.dart';
import '../../../../constants/app_assets.dart';

class ConfirmationFooter extends StatelessWidget {
  const ConfirmationFooter(
      {super.key, required this.checkoutController, this.profileController});

  final CheckoutController checkoutController;
  final ProfileController? profileController;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FittedBox(
            child: Text(
              '${'Orders above'.tr} ${App.currency} ${'500 are eligible for free shipping'.tr}',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 8,
                    color: AppColors.label,
                  ),
            ),
          ),
          // const SizedBox(height: 5,),

          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Subtotal'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  height: 1.4,
                                  fontSize: 14,
                                  color: AppColors.label,
                                ),
                          ),
                        ),
                        profileController?.currnecy.value != null
                            ? Text(
                                '${profileController?.currnecy.value} ${checkoutController.orderPriceModal.value.data?.subtotal}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      height: 1.4,
                                      color: AppColors.mediumLabel,
                                      fontSize: 14,
                                    ),
                              )
                            : Text(
                                '${App.currency} ${checkoutController.orderPriceModal.value.data?.subtotal}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      height: 1.4,
                                      color: AppColors.mediumLabel,
                                      fontSize: 14,
                                    ),
                              ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            checkoutController.isGiveAway!
                                ? 'Shipping (10-12 Business Days)'.tr
                                : 'Shipping (3-5 Business Days)'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  height: 1.4,
                                  fontSize: 14,
                                  color: AppColors.label,
                                ),
                          ),
                        ),
                        Text(
                          checkoutController.orderPriceModal.value.data
                                      ?.shippingCharge ==
                                  0
                              ? 'Free'.tr
                              : '${profileController?.currnecy.value ?? App.currency} ${checkoutController.orderPriceModal.value.data?.shippingCharge}',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                height: 1.4,
                                color: AppColors.mediumLabel,
                                fontSize: 14,
                              ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: checkoutController.orderPriceModal.value.data
                                      ?.cashOnDeliveryFees ==
                                  0 ||
                              checkoutController.orderPriceModal.value.data
                                      ?.cashOnDeliveryFees ==
                                  null ||
                              checkoutController.paymentMethodValue.value !=
                                  'COD'
                          ? false
                          : true,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Cash on delivery fees'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    height: 1.4,
                                    fontSize: 14,
                                    color: AppColors.label,
                                  ),
                            ),
                          ),
                          Text(
                            '${profileController?.currnecy.value ?? App.currency} ${checkoutController.orderPriceModal.value.data?.cashOnDeliveryFees}',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  height: 1.4,
                                  color: AppColors.dBlack,
                                  fontSize: 14,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: checkoutController
                                  .orderPriceModal.value.data?.discount ==
                              0
                          ? false
                          : true,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Discount'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    height: 1.4,
                                    fontSize: 14,
                                    color: AppColors.label,
                                  ),
                            ),
                          ),
                          profileController?.currnecy.value != null
                              ? Text(
                                  '${profileController?.currnecy.value} ${checkoutController.orderPriceModal.value.data?.discount}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        height: 1.4,
                                        color: AppColors.dBlack,
                                        fontSize: 14,
                                      ),
                                )
                              : Text(
                                  '${App.currency} ${checkoutController.orderPriceModal.value.data?.discount}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        height: 1.4,
                                        color: AppColors.dBlack,
                                        fontSize: 14,
                                      ),
                                ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible:
                          checkoutController.orderPriceModal.value.data?.tax ==
                                  0
                              ? false
                              : true,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Tax VAT 5% (Included)'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    height: 1.4,
                                    fontSize: 14,
                                    color: AppColors.label,
                                  ),
                            ),
                          ),
                          profileController?.currnecy.value != null
                              ? Text(
                                  "${profileController?.currnecy.value} ${checkoutController.orderPriceModal.value.data?.tax}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        height: 1.4,
                                        fontSize: 14,
                                        color: AppColors.label,
                                      ),
                                )
                              : Text(
                                  "${App.currency} ${checkoutController.orderPriceModal.value.data?.tax}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        height: 1.4,
                                        fontSize: 14,
                                        color: AppColors.label,
                                      ),
                                ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Total'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  height: 1.4,
                                  fontSize: 14,
                                  color: AppColors.label,
                                ),
                          ),
                        ),
                        profileController?.currnecy.value != null
                            ? Text(
                                '${profileController?.currnecy.value} ${checkoutController.orderPriceModal.value.data?.grandTotal}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      height: 1.4,
                                      color: AppColors.label,
                                      fontSize: 14,
                                    ),
                              )
                            : Text(
                                '${App.currency} ${checkoutController.orderPriceModal.value.data?.grandTotal}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      height: 1.4,
                                      color: AppColors.label,
                                      fontSize: 14,
                                    ),
                              ),
                      ],
                    ),
                    Visibility(
                        visible: checkoutController.orderPriceModal.value.data
                                        ?.hearts?.hearts ==
                                    0 ||
                                checkoutController.hasRedeem.isTrue ||
                                checkoutController.orderPriceModal.value.data
                                        ?.hearts?.hearts ==
                                    null
                            ? false
                            : true,
                        child: Row(
                          children: [
                            Image.asset(
                              AppAssets.starIcon,
                              height: 10,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            FittedBox(
                              child: Text(
                                '${'Earn'.tr} ${checkoutController.orderPriceModal.value.data?.hearts?.hearts} ${'Points'.tr}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      height: 1.4,
                                      color: AppColors.dBlack,
                                      fontSize: 12,
                                    ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          )
          // }),
        ]));
  }
}

/*
class ConfirmationFooter extends StatelessWidget {
  const ConfirmationFooter({
    super.key,
    required this.checkoutController,
    required this.profileController,
  });

  final CheckoutController checkoutController;
  final ProfileController profileController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Subtotal',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  fontSize: 14,
                                  color: AppColors.label,
                                ),
                      ),
                    ),
                    Visibility(
                      visible: checkoutController
                                  .orderPriceModal.data?.shippingCharge ==
                              0
                          ? false
                          : true,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Shipping',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                height: 1.4,
                                fontSize: 14,
                                color: AppColors.label,
                              ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible:
                          checkoutController.orderPriceModal.data?.discount == 0
                              ? false
                              : true,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Discount',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                height: 1.4,
                                fontSize: 14,
                                color: AppColors.label,
                              ),
                        ),
                      ),
                    ),
                    Text(
                      'Total',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            height: 1.4,
                            fontSize: 14,
                            color: AppColors.dBlack,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Visibility(
                      visible: checkoutController.orderPriceModal.data?.tax == 0
                          ? false
                          : true,
                      child: FittedBox(
                        child: Text(
                          'Including ${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.tax} in taxes',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                height: 1.4,
                                color: AppColors.dBlack,
                                fontSize: 14,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.subtotal}',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            height: 1.4,
                            color: AppColors.mediumLabel,
                            fontSize: 14,
                          ),
                    ),
                  ),
                  Visibility(
                    visible: checkoutController
                                .orderPriceModal.data?.shippingCharge ==
                            0
                        ? false
                        : true,
                    child: FittedBox(
                      child: Text(
                        '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.shippingCharge}',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  color: AppColors.mediumLabel,
                                  fontSize: 14,
                                ),
                      ),
                    ),
                  ),
                  Visibility(
                      visible:
                          checkoutController.orderPriceModal.data?.discount == 0
                              ? false
                              : true,
                      child: FittedBox(
                        child: Text(
                          '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.discount}',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                height: 1.4,
                                color: AppColors.dBlack,
                                fontSize: 14,
                              ),
                        ),
                      )),
                  FittedBox(
                    child: Text(
                      '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.grandTotal}',
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                height: 1.4,
                                color: AppColors.mediumLabel,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(height: AppDimensions.viewBottomPadding(context) + 10),
        ],
      ),
    );
  }
}
 */
