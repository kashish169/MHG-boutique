import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:mhg/features/success_order/controller/success_order_controller.dart';

class SuccessOrderContactInformation extends StatelessWidget {
  const SuccessOrderContactInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<SucessOrderController>(builder: (controller) {
      if (controller.isError.isTrue) {
        return RetryButton(
          onTap: () {
            controller.getMyOrders();
          },
        );
      }
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Information',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                  color: AppColors.label,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              controller.orderModel.user.name,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
            Text(
             controller.orderModel.user.email,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
            Text(
              controller.orderModel.user.number,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
          ],
        ),
      );
    });
  }
}
