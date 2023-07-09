import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_colors.dart';
import '../../controller/success_order_controller.dart';

class SuccessOrderThanks extends StatelessWidget {
  SuccessOrderThanks({super.key});
  final SucessOrderController controller = Get.find();
  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.secondary)),
          child: Center(
            child: Icon(
              Icons.done_rounded,
              color: AppColors.secondary,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'order ',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Thank You, ${controller.orderModel.user.name}!',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}
