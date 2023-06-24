import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

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
          const SizedBox(height: 10),
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
              ? const SizedBox()
              : Text(
                  'Payment Method Type',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.label,
                      ),
                ),
          checkoutController.paymentMethodsModel.data == null ||
                  checkoutController.paymentMethodsModel.data!.isEmpty
              ? const SizedBox()
              : Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          checkoutController.codOrCard("COD");
                          setState(() {});
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          var value = checkoutController
                              .paymentMethodsModel.data!
                              .firstWhere((element) => element.isDefault == 0)
                              .cardType;
                          checkoutController.codOrCard(value);
                          setState(() {});
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              checkoutController.paymentMethodsModel.data!
                                  .firstWhere(
                                      (element) => element.isDefault == 0)
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
                      ),
                    ),
                  ],
                ),
          const SizedBox(height: 15),
          Obx(
            () => PlaceOrderButton(
              title: 'Place Order',
              width: 300,
              hasIcon: true,
              isLoading: checkoutController.isLoadingCreateOrder.value,
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
                    checkoutController.paymentMethod.value);
              },
            ),
          ),
          SizedBox(height: AppDimensions.viewBottomPadding(context) + 20),
        ],
      ),
    );
  }
}
