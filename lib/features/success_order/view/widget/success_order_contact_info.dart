import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/success_order/controller/success_order_controller.dart';

class SuccessOrderContactInformation extends StatelessWidget {
  SucessOrderController controller;
   SuccessOrderContactInformation({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Information'.tr,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 14,
                  color: AppColors.label,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
             "Name: ${controller.orderModel.user.name}",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 14,
                    color: AppColors.mediumLabel,
                  ),
            ),
            Text(
            "Email: ${controller.orderModel.user.email}",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 14,
                    color: AppColors.mediumLabel,
                  ),
            ),
            Text(
             "Phone Number: ${controller.orderModel.user.number}",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 14,
                    color: AppColors.mediumLabel,
                  ),
            ),
          ],
        ),
      );
  }
}
