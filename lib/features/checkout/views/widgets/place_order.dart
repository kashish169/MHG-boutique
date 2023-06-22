// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

class PlaceOrder extends StatefulWidget {
  PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
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
          checkoutController.paymentMethodsModel.data == null ||
                  checkoutController.paymentMethodsModel.data!.isEmpty
              ? SizedBox.shrink()
              : Text(
                  'Payment',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.label,
                      ),
                ),
          const SizedBox(height: 15),
          checkoutController.paymentMethodsModel.data == null ||
                  checkoutController.paymentMethodsModel.data!.isEmpty
              ? SizedBox.shrink()
              : SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: ButtonBar(
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            "Cash On Delivery",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.label,
                                ),
                          ),
                          Radio(
                              value: "COD",
                              groupValue: checkoutController.codOrCard.value,
                              onChanged: (val) {
                                checkoutController.codOrCard(val);
                                setState(() {});
                              }),
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            checkoutController.paymentMethodsModel.data!
                                .firstWhere((element) => element.isDefault == 0)
                                .cardType!,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.label,
                                ),
                          ),
                          Radio(
                              value: checkoutController
                                  .paymentMethodsModel.data!
                                  .firstWhere(
                                      (element) => element.isDefault == 0)
                                  .cardType!,
                              groupValue: checkoutController.codOrCard.value,
                              onChanged: (val) {
                                checkoutController.codOrCard(val);
                                setState(() {});
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
          const SizedBox(height: 15),
          Obx(
            () => (checkoutController.isLoadingCreateOrder.value == false &&
                    checkoutController.isErrorCreateOrder.value == false)
                ? PlaceOrderButton(
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
                          checkoutController.codeController.text,
                          checkoutController.codOrCard.value,
                          checkoutController.paymentMethod);
                    },
                  )
                : (checkoutController.isLoadingCreateOrder.value == false &&
                        checkoutController.isErrorCreateOrder.value == true)
                    ? RetryButton(
                        onTap: () => checkoutController.createOrder(
                            profileController.model.value!.name,
                            profileController.model.value!.email,
                            profileController.model.value!.street,
                            profileController.model.value!.state,
                            profileController.model.value!.zipCode,
                            profileController.model.value!.countryName,
                            checkoutController.codeController.text,
                            checkoutController.codOrCard.value,
                            checkoutController.paymentMethod.value),
                      )
                    : LoadingWidget(),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
