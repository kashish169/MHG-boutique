import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mhg/features/mycart/view/widgets/my_cart_card.dart';
import 'package:mhg/features/myorders/models/order_model.dart';
import 'package:mhg/features/myorders/view/widgets/order_detail_card.dart';
import 'package:mhg/widgets/custom_app_bar.dart';


class MyOrderDetailPage extends StatelessWidget {
  static String routeName = '/my_orders_details';
  const MyOrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OrderDetail> model=Get.arguments as List<OrderDetail>;
    return Scaffold(
      appBar: customAppBar(context, title: 'Order Details'),
      body: Column(
        children: [

          Expanded(
            child:  Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(18),
                itemCount: model.length,
                itemBuilder: (context, index) {
                  return OrderDetailsCard(
                    model:model[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 9);
                },
              ),
            ),),

        ],
      ),
    );
  }
}
