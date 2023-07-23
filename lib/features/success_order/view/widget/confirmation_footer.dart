import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';

import '../../../../constants/app_assets.dart';

class ConfirmationFooter extends StatelessWidget {
  const ConfirmationFooter(
      {super.key,
      required this.checkoutController,
      required this.profileController});
  final CheckoutController checkoutController;
  final ProfileController profileController;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FittedBox(
            child: Text(
              'Orders above AED 500 are eligible for free shipping',
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
                            'Subtotal',
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
                          '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.subtotal}',
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
                            'Shipping (3-5 Business Days)',
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
                          checkoutController
                                      .orderPriceModal.data?.shippingCharge ==
                                  0
                              ? 'Free'
                              : '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.shippingCharge}',
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
                      visible:
                          checkoutController.orderPriceModal.data?.discount == 0
                              ? false
                              : true,
                      child: Row(
                        children: [
                          Expanded(
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
                          Text(
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
                        ],
                      ),
                    ),
                    Visibility(
                      visible: checkoutController.orderPriceModal.data?.tax == 0
                          ? false
                          : true,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Tax VAT 5% (Included)',
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
                            "${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.tax}",
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
                            'Total',
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
                        Text(
                          '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.grandTotal}',
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
                        visible: checkoutController
                                        .orderPriceModal.data?.hearts?.hearts ==
                                    0 ||
                                checkoutController.hasRedeem.isTrue
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
                                'Earn ${checkoutController.orderPriceModal.data?.hearts?.hearts} Points',
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
