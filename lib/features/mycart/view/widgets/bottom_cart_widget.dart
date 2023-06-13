import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';
import 'checkout_button.dart';

class BottomCartWidget extends StatelessWidget {
  const BottomCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: AppColors.primary,
          ),
          const SizedBox(height: 15),
          Text(
            'TOTAL',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                  color: AppColors.label,
                ),
          ),
          Text(
            '\$81.57',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColors.mediumLabel,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'Free Domestic Shipping',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                  color: AppColors.label,
                ),
          ),
          const SizedBox(height: 15),
          const CheckOutButton(),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
