import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';

class PlaceOrder extends StatelessWidget {
  PlaceOrder({super.key});
  final controller = Get.find<MyCartController>();
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
          Text(
            'TOTAL',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                  color: AppColors.label,
                ),
          ),
          Obx(() => Text(
                checkoutController.total.value != ''
                    ? '\$${checkoutController.total.value}'
                    : '\$${controller.totalPrice.value}',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColors.mediumLabel,
                      fontWeight: FontWeight.bold,
                    ),
              )),
          const SizedBox(height: 15),
          PlaceOrderButton(
              title: 'Place Order',
              width: 300,
              hasIcon: true,
              onPress: () {
                checkoutController.createOrder(
                    profileController.model.value!.name,
                    profileController.model.value!.email,
                    profileController.model.value!.street,
                    profileController.model.value!.state,
                    profileController.model.value!.zipCode,
                    profileController.model.value!.countryName,
                    coupon,
                    paymentMethod,
                    checkoutController.paymentMethod);
              }),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
