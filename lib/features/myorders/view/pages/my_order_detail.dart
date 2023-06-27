import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/myorders/models/order_model.dart';
import 'package:mhg/features/myorders/view/widgets/my_order_details_global_info.dart';
import 'package:mhg/features/myorders/view/widgets/order_detail_card.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/divider_widget.dart';

class MyOrderDetailPage extends StatelessWidget {
  static String routeName = '/my_orders_details';

  const MyOrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MyOrder model = Get.arguments as MyOrder;
    return Scaffold(
      appBar: customAppBar(context, title: 'Order Details'),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(18),
                itemCount: model.orderDetails.length,
                itemBuilder: (context, index) {
                  return OrderDetailsCard(
                    model: model.orderDetails[index],
                    orderStatus:model.orderStatus
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 9);
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: DividerWidget(),
          ),
          MyOrderDetailsGlobalInfo(
            model: model,
          ),
          SizedBox(
            height: AppDimensions.viewBottomPadding(context),
          )
        ],
      ),
    );
  }
}
