import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';

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
                      Text(
                        'SUBTOTAL',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.label,
                                ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '\$${checkoutController.orderPriceModal.data?.subtotal}',
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'TAX',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.label,
                                ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '\$${checkoutController.orderPriceModal.data?.tax}',
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible:
                      checkoutController.orderPriceModal.data?.discount == 0
                          ? false
                          : true,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'DISCOUNT',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                                color: AppColors.label,
                              ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '\$${checkoutController.orderPriceModal.data?.discount}',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: AppColors.mediumLabel,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'TOTAL',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.label,
                                ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '\$${checkoutController.orderPriceModal.data?.grandTotal}',
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
          const SizedBox(height: 15),
          Obx(
            () => PlaceOrderButton(
              title: 'Place Order',
              width: 300,
              hasIcon: true,
              color: checkoutController.isLoadingRedeem.isTrue
                  ? AppColors.grey
                  : AppColors.secondary,
              isLoading: checkoutController.isLoadingCreateOrder.value,
              onPress: checkoutController.isLoadingRedeem.isTrue
                  ? () {}
                  : () {
                      checkoutController.createOrder();
                    },
            ),
          ),
          SizedBox(height: AppDimensions.viewBottomPadding(context) + 15),
        ],
      ),
    );
  }
}
