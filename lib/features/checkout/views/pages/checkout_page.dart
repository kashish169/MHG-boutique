// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/checkout_items.dart';
import 'package:mhg/features/checkout/views/widgets/payment_method.dart';
import 'package:mhg/features/checkout/views/widgets/place_order.dart';
import 'package:mhg/features/checkout/views/widgets/promo_code.dart';
import 'package:mhg/features/checkout/views/widgets/shipping_address.dart';

import 'package:mhg/widgets/custom_app_bar.dart';

class CheckoutPage extends StatefulWidget {
  static String routeName = '/checkout';

  const CheckoutPage({
    super.key,
  });

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
   final CheckoutController checkoutController = Get.put(CheckoutController());
  @override
  void initState() {
    super.initState();
     checkoutController.getAllPaymentMethods();
    setState(() {});
  }

  @override
  void dispose() {
    setState(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(context, title: 'Checkout'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ShippingAddress(),
            divider(),
            PaymentMethod(),
            divider(),
            const CheckoutItems(),
            divider(),
            PromoCode(),
            divider(),
            const PlaceOrder(),
          ],
        ),
      ),
    );
  }
}

Widget divider() {
  return Divider(
    color: AppColors.grey,
  );
}
