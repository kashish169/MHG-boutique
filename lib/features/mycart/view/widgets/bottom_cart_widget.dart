import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';
import '../../../../app/app.dart';
import '../../../../constants/app_colors.dart';
import '../../../checkout/views/widgets/promo_code.dart';
import '../../../profile/controller/profile_controller.dart';
import 'checkout_button.dart';

class BottomCartWidget extends StatelessWidget {
  const BottomCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MyCartController>();
    final checkoutController = Get.find<CheckoutController>();
    final profileController = Get.find<ProfileController>();
    return Column(
      children: [
        Divider(
          color: AppColors.primary,
        ),
        const SizedBox(height: 15),
        PromoCode(),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              // GetX<CheckoutController>(builder: (checkoutController) {

              // }),
              Obx(() {
                if (checkoutController.isLoadingRedeem.isTrue) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 38),
                    child: LoadingThreeBounce(
                      color: AppColors.primary,
                      size: 20,
                    ),
                  );
                } else if (checkoutController.isErrorRedeem.isTrue) {
                  return RetryButton(
                      onTap: () => checkoutController.orderPrice());
                }
                return Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'subtotal'.tr,
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
                                '${profileController.currnecy.value} ${checkoutController.orderPriceModal.value.data?.subtotal}',
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
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  checkoutController.orderPriceModal.value.data
                                          ?.shippingMessage ??
                                      '',
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
                                    : '${profileController.currnecy.value} ${checkoutController.orderPriceModal.value.data?.shippingCharge}',
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
                            visible: checkoutController.orderPriceModal.value
                                            .data?.cashOnDeliveryFees ==
                                        0 ||
                                    checkoutController.orderPriceModal.value
                                            .data?.cashOnDeliveryFees ==
                                        null ||
                                    checkoutController
                                            .paymentMethodValue.value !=
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
                                  '${profileController.currnecy.value} ${checkoutController.orderPriceModal.value.data?.cashOnDeliveryFees}',
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
                                Text(
                                  '${profileController.currnecy.value} ${checkoutController.orderPriceModal.value.data?.discount}',
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
                                        .orderPriceModal.value.data?.tax ==
                                    0
                                ? false
                                : true,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    // 'Tax VAT 5% (Included)',
                                    "5% VAT Included".tr,
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
                                  "${profileController.currnecy.value} ${checkoutController.orderPriceModal.value.data?.tax}",
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
                                  'total'.tr,
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
                                '${profileController.currnecy.value} ${checkoutController.orderPriceModal.value.data?.grandTotal}',
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
                          // Visibility(
                          //   visible: checkoutController.orderPriceModal.data
                          //                   ?.hearts?.hearts ==
                          //               0 ||
                          //           checkoutController.hasRedeem.isTrue
                          //       ? false
                          //       : true,
                          // child:
                          Visibility(
                            visible: checkoutController.orderPriceModal.value
                                    .data?.hearts?.hearts !=
                                null,
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
                            ),
                          ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                );
              })
            ],
          ),
        ),
        const SizedBox(height: 15),
        CheckOutButton(),
        const SizedBox(height: 15),
      ],
    );
  }
}
