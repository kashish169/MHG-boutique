import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/apple_pay_widget.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';
import '../../../../constants/app_toasts.dart';
import 'guest_order_dialog.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  final CheckoutController checkoutController = Get.put(CheckoutController());
  final ProfileController profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          FittedBox(
            child: Text(
              'Orders above ${App.currency} 500 are eligible for free shipping',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 8,
                    color: AppColors.label,
                  ),
            ),
          ),
          // const SizedBox(height: 5,),
          GetX<CheckoutController>(builder: (checkoutController) {
            if (checkoutController.isLoadingRedeem.isTrue) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: LoadingThreeBounce(
                  color: AppColors.primary,
                  size: 20,
                ),
              );
            } else if (checkoutController.isErrorRedeem.isTrue) {
              return RetryButton(onTap: () => checkoutController.orderPrice());
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
                              '${profileController.currnecy.value} ${checkoutController.orderPriceModal.value.data?.subtotal}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    height: 1.4,
                                    color: AppColors.mediumLabel,
                                    fontSize: 14,
                                  )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              // checkoutController.isGiveAway == true
                              //     ? 'Shipping (10-12 Business Days)'
                              //     : 'Shipping (3-5 Business Days)',
                              checkoutController
                                  .orderPriceModal.value.data!.shippingMessage!,
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
                                ? 'Free'
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
                                'Cash on delivery fees',
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
                              '${profileController?.currnecy.value ?? 'AED'} ${checkoutController.orderPriceModal.value.data?.cashOnDeliveryFees}',
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
                              '${profileController.currnecy.value} ${checkoutController.orderPriceModal.value.data?.tax}',
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
                                  'Earn ${checkoutController.orderPriceModal.value.data?.hearts?.hearts} Points',
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
            );
          }),

          const SizedBox(height: 15),
          Obx(
            () => Visibility(
              visible: !checkoutController.isApplePay.value,
              child: PlaceOrderButton(
                title: 'Place Order',
                width: 300,
                hasIcon: true,
                color: checkoutController.isLoadingRedeem.isTrue
                    ? AppColors.grey
                    : AppColors.secondary,
                isLoading: checkoutController.isLoadingCreateOrder.value,
                onPress: checkoutController.paymentMethodValue.value == ''
                    ? null
                    : checkoutController.isLoadingRedeem.isTrue
                        ? () {}
                        : () {
                            if (App.token.isNotEmpty) {
                              checkoutController.createOrder();
                            } else {
                              _onGuestOrder.call();
                            }
                          },
              ),
            ),
          ),
          if (Platform.isIOS)
            Obx(() {
              if (checkoutController.isLoadingRedeem.isTrue) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: LoadingThreeBounce(
                    color: AppColors.primary,
                    size: 20,
                  ),
                );
              } else if (checkoutController.isErrorRedeem.isTrue) {
                return const SizedBox();
              }
              return Visibility(
                visible: checkoutController.isApplePay.value,
                child: const ApplePayWidget(),
              );
            }),
          SizedBox(height: AppDimensions.viewBottomPadding(context) + 15),
        ],
      ),
    );
  }
}

void _onGuestOrder() {
  final checkoutController = Get.find<CheckoutController>();
  if (checkoutController.paymentMethodValue.isEmpty) {
    AppToasts.errorToast("Choose payment method");
    return;
  }
  if (checkoutController.paymentMethodValue.value == "TAP") {
    if (checkoutController.userSelectedCardModel.value == null) {
      AppToasts.errorToast("Choose payment card");
      return;
    }
  }
  Get.dialog(
    GuestOrderDialog(),
  );
}

class ApplePayWebViewButton extends StatelessWidget {
  const ApplePayWebViewButton({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PrimaryButton(
        onTap: onTap,
        title: '',
        width: 270,
        height: 50,
        color: AppColors.white,
        isApplePay: true,
        isSelected: true,
      ),
    );
  }
}
