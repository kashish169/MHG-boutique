import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/myorders/models/order_model.dart';

import '../../../profile/controller/profile_controller.dart';

class MyOrderDetailsGlobalInfo extends StatelessWidget {
  final MyOrder model;
  const MyOrderDetailsGlobalInfo({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();
    return Obx(() => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Visibility(
                    visible: double.parse(model.heartsDiscount) != 0,
                    child: Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Hearts Discount',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "${profileController.currnecy.value} ${model.heartsDiscount}",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.couponAmount) != 0,
                    child: Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Coupon Amount',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "${profileController.currnecy.value} ${model.couponAmount}",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Visibility(
                    visible: double.parse(model.subTotal) != 0,
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sub Total',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "${profileController.currnecy.value} ${model.subTotal}",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.tax) != 0,
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'TAX',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "${profileController.currnecy.value} ${model.tax}",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.grandTotal) != 0,
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Total',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.mediumLabel,
                                ),
                          ),
                          Text(
                            "${profileController.currnecy.value} ${model.grandTotal}",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.mediumLabel,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
