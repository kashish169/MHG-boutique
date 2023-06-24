import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/views/widgets/checkout_items.dart';
import 'package:mhg/features/checkout/views/widgets/payment_method.dart';
import 'package:mhg/features/checkout/views/widgets/place_order.dart';
import 'package:mhg/features/checkout/views/widgets/promo_code.dart';
import 'package:mhg/features/checkout/views/widgets/shipping_address.dart';

import 'package:mhg/widgets/custom_app_bar.dart';

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
