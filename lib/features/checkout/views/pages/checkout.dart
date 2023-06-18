// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/views/widgets/items.dart';
import 'package:mhg/features/checkout/views/widgets/payment_method.dart';
import 'package:mhg/features/checkout/views/widgets/place_order.dart';
import 'package:mhg/features/checkout/views/widgets/promo_code.dart';
import 'package:mhg/features/checkout/views/widgets/shipping_address.dart';

import 'package:mhg/widgets/custom_app_bar.dart';

class Checkout extends StatelessWidget {
  static String routeName = '/checkout';

  const Checkout({
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
            height: MediaQuery.of(context).size.height * 0.81,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return index == 0
                    ? ShippingAddress()
                    : index == 1
                        ? PaymentMethod()
                        : index == 2
                            ?Items()
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


/**
 *  CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Text(
                      'Shipping Address',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontSize: 16),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: const SizedBox(
                      height: 4,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Text(
                      'John Doe',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
 */