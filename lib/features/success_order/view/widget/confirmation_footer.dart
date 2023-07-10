import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';

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
         padding: const EdgeInsets.all(10),
      color: AppColors.white2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Subtotal',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                              height: 1.4,
                              fontSize: 16,
                              color: AppColors.label,
                            ),
                      ),
                    ),

                    Visibility(
                      visible: checkoutController
                                  .orderPriceModal
                                  .data
                                  ?.shippingCharge ==
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
                                fontSize: 16,
                                color: AppColors.label,
                              ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: checkoutController
                                  .orderPriceModal
                                  .data
                                  ?.discount ==
                              0
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
                                fontSize: 16,
                                color: AppColors.label,
                              ),
                        ),
                      ),
                    ),
                    Text(
                      'Total',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(
                            height: 1.4,
                            fontSize: 16,
                            color: AppColors.dBlack,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Visibility(
                      visible: checkoutController
                          .orderPriceModal.data?.tax ==
                          0
                          ? false
                          : true,

                      child: FittedBox(
                        child: Text(
                          'Including ${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.tax} in texas',
                          style:
                          Theme.of(context).textTheme.displaySmall?.copyWith(
                            height: 1.4,
                            color: AppColors.dBlack,
                            fontSize: 16,
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
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.subtotal}',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(
                            height: 1.4,
                            color: AppColors.mediumLabel,
                            fontSize: 16,
                          ),
                    ),
                  ),

                  Visibility(
                    visible: checkoutController
                                .orderPriceModal
                                .data
                                ?.shippingCharge ==
                            0
                        ? false
                        : true,
                    child: FittedBox(
                      child: Text(
                        '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.shippingCharge}',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                              height: 1.4,
                              color:
                                  AppColors.mediumLabel,
                              fontSize: 16,
                            ),
                      ),
                    ),
                  ),
                  Visibility(
                      visible: checkoutController
                                  .orderPriceModal
                                  .data
                                  ?.discount ==
                              0
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
                                fontSize: 16,
                              ),
                        ),
                      )),
                  FittedBox(
                    child: Text(
                      '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.grandTotal}',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                            height: 1.4,
                            color: AppColors.dBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
              height: AppDimensions.viewBottomPadding(
                      context) +
                  15),
        ],
      ),
    );
  }
}