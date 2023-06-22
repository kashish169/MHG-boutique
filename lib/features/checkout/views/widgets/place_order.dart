import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({super.key});

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
          Text(
            '57.2',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColors.mediumLabel,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 15),
          PlaceOrderButton(
              title: 'Place Order', width: 300, hasIcon: true, onPress: () {}),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
