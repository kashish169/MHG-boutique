import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_colors.dart';
import '../../../profile/controller/profile_controller.dart';

class BodyMiddleText extends StatelessWidget {
  const BodyMiddleText({super.key, required this.brand, required this.price});
  final String brand;
  final String price;
  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Brand:'.tr,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 10, color: AppColors.lightGray4),
              ),
              TextSpan(
                text: " $brand",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 10, color: AppColors.darkGrey),
              )
            ]),
          ),
          const SizedBox(
            height: 13,
          ),
          Obx(() => Text(
                "${profileController.currnecy.value} $price",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 10, color: AppColors.darkGrey),
              )),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
