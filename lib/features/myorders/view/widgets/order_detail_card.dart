import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/myorders/controller/my_orders_controller.dart';
import 'package:mhg/features/myorders/models/order_model.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../constants/app_dimensions.dart';
import '../../../profile/controller/profile_controller.dart';

class OrderDetailsCard extends StatelessWidget {
  final OrderDetail model;
  final int orderStatus;
  const OrderDetailsCard({
    super.key,
    required this.model,
    required this.orderStatus,
  });

  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: AppColors.shadow(0.1),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadiusDirectional.horizontal(
              start: Radius.circular(8),
            ),
            child: NetImage(
              image: model.imageLink,
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
                  model.productName,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.mediumLabel,
                      ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order ID:${model.orderId}',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 12,
                            color: AppColors.lightLabel,
                          ),
                    ),
                    Text(
                      'Product ID:${model.productId}',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 12,
                            color: AppColors.lightLabel,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Obx(() => Text(
                      'Price: ${profileController.currnecy.value} ${model.price}',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 14,
                            color: AppColors.mediumLabel,
                          ),
                    )),
                const SizedBox(height: 4),
                Text(
                  'Quantity: ${model.quantity}',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 14,
                        color: AppColors.mediumLabel,
                      ),
                ),
                const SizedBox(height: 4),
                Visibility(
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
                ),
                const SizedBox(height: 4),
                Obx(() => Text(
                      'Total Price: ${profileController.currnecy.value} ${model.totalPrice}',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 14,
                            color: AppColors.mediumLabel,
                          ),
                    )),
                const SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
