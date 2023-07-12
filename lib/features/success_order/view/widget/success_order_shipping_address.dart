import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import '../../controller/success_order_controller.dart';

class SuccessOrderShippingAddress extends StatelessWidget {
  const SuccessOrderShippingAddress({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SucessOrderController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    'Shipping Address',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.label,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  controller.orderModel.user.name,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.mediumLabel,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    controller.orderModel.user.streetAddress ?? '',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                          color: AppColors.mediumLabel,
                        ),
                  ),
                ),
                Text(
                  controller.orderModel.user.state ?? '',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.mediumLabel,
                      ),
                ),
                Text(
                  controller.orderModel.user.zipCode ?? '',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.mediumLabel,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    controller.orderModel.user.countryName ?? '',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                          color: AppColors.mediumLabel,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
