import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/success_order/view/widget/success_order_custom_row.dart';

import '../../../../constants/app_colors.dart';
import '../../controller/success_order_controller.dart';

class SuccessOrderTopPart extends StatelessWidget {
  SuccessOrderTopPart({super.key});
  final SucessOrderController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
            color: AppColors.lightGray,
          ))),
          child: Column(
            children: [
              SuccessOrderCutomRow(
                title: "SubTotal",
                isAED: true,
                subTitle: controller.orderModel.value!.subTotal,
              ),
              const SizedBox(
                height: 10,
              ),
              SuccessOrderCutomRow(
                title: "Shipning",
                isAED: true,
                subTitle: controller.orderModel.value!.deliveryCharge,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
            color: AppColors.lightGray,
          ))),
          child: SuccessOrderCutomRow(
            title: "Total",
            isTotal: true,
            isAED: true,
            subTitle: controller.orderModel.value!.grandTotal,
          ),
        ),
      ],
    );
  }
}
