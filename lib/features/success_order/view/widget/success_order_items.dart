import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/success_order/controller/success_order_controller.dart';
import 'package:mhg/widgets/net_image.dart';

class SuccessOrderItems extends StatelessWidget {
  final SucessOrderController controller;
   final ProfileController profileController;
  SuccessOrderItems({
    super.key,
    required this.profileController,
    required this.controller,
  });

 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(
          () => ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(18),
            itemCount: controller.orderModel.value!.orders.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(8),
                    ),
                    child: NetImage(
                      image: controller.orderModel.value!.orders[index].image,
                      width: 120,
                      height: AppDimensions.productHeight(context) / 1.3,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          controller
                              .orderModel.value!.orders[index].productName,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                                color: AppColors.mediumLabel,
                              ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order ID:${controller.orderModel.value!.orders[index].orderId}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: AppColors.lightLabel,
                                  ),
                            ),
                            Text(
                              'Product ID:${controller.orderModel.value!.orders[index].productId}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 12,
                                    color: AppColors.lightLabel,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Obx(() => Text(
                              'Price: ${profileController.currnecy.value} ${controller.orderModel.value!.orders[index].price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    color: AppColors.mediumLabel,
                                  ),
                            )),
                        const SizedBox(height: 4),
                        Text(
                          'Quantity: ${double.parse(controller.orderModel.value!.orders[index].quantity.toString()).toInt()}',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 14,
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
                        const SizedBox(height: 4),
                        Obx(() => Text(
                              'Total Price: ${profileController.currnecy.value} ${controller.orderModel.value!.orders[index].totalPrice}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    color: AppColors.mediumLabel,
                                  ),
                            )),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 9);
            },
          ),
        ),
      ],
    );
  }
}
