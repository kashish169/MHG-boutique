// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

class CheckoutPage extends StatelessWidget {
  static String routeName = '/checkout';

  const CheckoutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(context, title: 'Checkout'),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return index == 0
                    ? ShippingAddress()
                    : index == 1
                        ? PaymentMethod()
                        : index == 2
                            ? CheckoutItems()
                            : index == 3
                                ? PromoCode()
                                : PlaceOrder();
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
