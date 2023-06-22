import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import '../../../../constants/app_colors.dart';
import 'checkout_button.dart';

class BottomCartWidget extends StatelessWidget {
  const BottomCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MyCartController>();
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
          Obx(() => Text(
                '\$${controller.totalPrice.value}',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColors.mediumLabel,
                      fontWeight: FontWeight.bold,
                    ),
              )),
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
