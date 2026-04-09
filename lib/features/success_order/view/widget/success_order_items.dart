import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/success_order/controller/success_order_controller.dart';
import 'package:mhg/widgets/net_image.dart';

class SuccessOrderItems extends StatelessWidget {
  final SucessOrderController controller;
  final ProfileController? profileController;
  SuccessOrderItems({
    super.key,
    this.profileController,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(5),
          itemCount: controller.orderModel.orderDetails.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadiusDirectional.horizontal(
                    start: Radius.circular(8),
                  ),
                  child: NetImage(
                    image: controller.orderModel.orderDetails[index].image,
                    width: 120,
                    height:
                        controller.orderModel.orderDetails[index].image != null
                            ? AppDimensions.productHeight(context) / 1.3
                            : 20,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        controller.orderModel.orderDetails[index].productName ??
                            '',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 14,
                                  color: AppColors.mediumLabel,
                                ),
                      ),
                      const SizedBox(height: 4),

                      profileController?.currnecy.value != null
                          ? Obx(() => Text(
                                '${'Price'.tr}: ${profileController?.currnecy.value} ${controller.orderModel.orderDetails[index].price}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      fontSize: 11,
                                      color: AppColors.mediumLabel,
                                    ),
                              ))
                          : Text(
                              '${'Price'.tr}: ${App.currency} ${controller.orderModel.orderDetails[index].price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 11,
                                    color: AppColors.mediumLabel,
                                  ),
                            ),
                      const SizedBox(height: 4),
                      Text(
                        '${'Quantity'.tr}: ${double.parse(controller.orderModel.orderDetails[index].quantity.toString()).toInt()}',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 11,
                                  color: AppColors.mediumLabel,
                                ),
                      ),
                      const SizedBox(height: 4),
                      /*  Visibility(
                  visible: orderStatus != 6 && orderStatus != 5,
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'Status: ',
                        style:
       Theme.of(context).textTheme.displaySmall?.copyWith(
             fontSize: 14,
             color: AppColors.mediumLabel,
           ),
                      ),
                      TextSpan(
                        text: Get.find<MyOrdersController>()
       .getStatus(orderStatus),
                        style:
       Theme.of(context).textTheme.displaySmall?.copyWith(
             fontSize: 14,
             color: AppColors.mediumLabel,
             // color: Get.find<MyOrdersController>().getStatusColor(orderStatus),
           ),
                      )
                    ]),
                  ),
                ) ,*/
                      // const SizedBox(height: 4),
                      profileController?.currnecy.value != null
                          ? Obx(() => Text(
                                '${'Total Price'.tr}: ${profileController?.currnecy.value} ${controller.orderModel.orderDetails[index].totalPrice}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      fontSize: 14,
                                      color: AppColors.mediumLabel,
                                    ),
                              ))
                          : Text(
                              '${'Total Price'.tr}: ${App.currency} ${controller.orderModel.orderDetails[index].totalPrice}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    color: AppColors.mediumLabel,
                                  ),
                            ),
                      // const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 5);
          },
        ),
      ],
    );
  }
}
