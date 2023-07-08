import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/net_image.dart';
import '../../controller/success_order_controller.dart';

class SuccessOrderItems extends StatelessWidget {
  SuccessOrderItems({super.key});
  final SucessOrderController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.orderModel.value!.orders.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: NetImage(
                        image: controller
                            .orderModel.value!.orders[index].imageLink),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  controller.orderModel.value!.orders[index]
                                      .productName,
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                            Text(
                              'AED ${controller.orderModel.value!.orders[index].price}',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
