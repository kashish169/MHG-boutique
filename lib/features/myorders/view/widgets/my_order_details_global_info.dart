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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: double.parse(model.heartsDiscount ?? '0') != 0,
                    child: FittedBox(
                      child: Text(
                        'Hearts Discount',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 15,
                                  height: 1.4,
                                  color: AppColors.label,
                                ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.couponAmount ?? '0') != 0,
                    child: FittedBox(
                      child: Text(
                        'Coupon Amount',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  fontSize: 15,
                                  color: AppColors.label,
                                ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.subTotal) != 0,
                    child: FittedBox(
                      child: Text(
                        'Subtotal',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  fontSize: 15,
                                  color: AppColors.label,
                                ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.tax) != 0,
                    child: FittedBox(
                      child: Text(
                        'Tax',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  fontSize: 15,
                                  color: AppColors.label,
                                ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.deliveryCharge) != 0,
                    child: FittedBox(
                      child: Text(
                        'Delivery Charge',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  fontSize: 15,
                                  color: AppColors.label,
                                ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.grandTotal) != 0,
                    child: Text(
                      'Total',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            height: 1.4,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: AppColors.dBlack,
                          ),
                    ),
                  ),
                ],
              )),
              const Expanded(child: SizedBox()),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: double.parse(model.heartsDiscount ?? '0') != 0,
                    child: Text(
                      "${profileController.currnecy.value} ${model.heartsDiscount}",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            height: 1.4,
                            color: AppColors.mediumLabel,
                            fontSize: 15,
                          ),
                    ),
                  ),
                  Visibility(
                      visible: double.parse(model.couponAmount ?? '0') != 0,
                      child: Text(
                        "${profileController.currnecy.value} ${model.couponAmount}",
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  color: AppColors.mediumLabel,
                                  fontSize: 15,
                                ),
                      )),
                  Visibility(
                      visible: double.parse(model.subTotal) != 0,
                      child: Text(
                        "${profileController.currnecy.value} ${model.subTotal}",
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  color: AppColors.mediumLabel,
                                  fontSize: 15,
                                ),
                      )),
                  Visibility(
                      visible: double.parse(model.tax) != 0,
                      child: Text(
                        "${profileController.currnecy.value} ${model.tax}",
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  height: 1.4,
                                  color: AppColors.mediumLabel,
                                  fontSize: 15,
                                ),
                      )),
                  Visibility(
                    visible: double.parse(model.deliveryCharge) != 0,
                    child: Text(
                      "${profileController.currnecy.value} ${model.deliveryCharge}",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            height: 1.4,
                            color: AppColors.mediumLabel,
                            fontSize: 15,
                          ),
                    ),
                  ),
                  Visibility(
                    visible: double.parse(model.grandTotal) != 0,
                    child: Text(
                      "${profileController.currnecy.value} ${model.grandTotal}",
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                height: 1.4,
                                color: AppColors.dBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ));
  }
}
