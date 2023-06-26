import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/checkout_items.dart';
import 'package:mhg/features/checkout/views/widgets/payment_method.dart';
import 'package:mhg/features/checkout/views/widgets/place_order.dart';
import 'package:mhg/features/checkout/views/widgets/promo_code.dart';
import 'package:mhg/features/checkout/views/widgets/shipping_address.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';

class CheckoutPage extends StatelessWidget {
  static String routeName = '/checkout';
  const CheckoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(context, title: 'Checkout'),
      body: GetX<CheckoutController>(initState: (state) async {
        await state.controller?.getUserPaymentMethods();
        if (state.controller!.paymentMethodsList.isEmpty) {
          await state.controller?.getPaymentMethods();
        }
        await state.controller?.orderPrice();
      }, builder: (controller) {
        if (controller.isLoading.isTrue ||
            controller.isLoadingPaymentMethods.isTrue ||
            profileController.isLoading.isTrue) {
          return const LoadingWidget();
        } else if (controller.isError.isTrue ||
            controller.isErrorPaymentMethods.isTrue ||
            profileController.isError.isTrue) {
          return RetryButton(onTap: () async {
            await controller.getUserPaymentMethods();
            if (controller.isErrorPaymentMethods.isTrue) {
              await controller.getPaymentMethods();
            }
            await controller.orderPrice();
            if (profileController.isError.isTrue) {
              await profileController.getProfileInfo();
            }
          });
        }
        return SingleChildScrollView(
          child: Column(
            children: [
              const ShippingAddress(),
              divider(),
              const PaymentMethod(),
              divider(),
              const CheckoutItems(),
              divider(),
              PromoCode(),
              divider(),
              const PlaceOrder(),
            ],
          ),
        );
      }),
    );
  }
}

Widget divider() {
  return Divider(
    color: AppColors.grey,
  );
}
