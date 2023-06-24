import 'package:flutter/material.dart';
import 'package:mhg/features/myorders/models/order_model.dart';
import '../../../../constants/app_colors.dart';
import 'my_order_card.dart';

class MyOrdersListWidget extends StatelessWidget {
  final List <MyOrder> model;
  const MyOrdersListWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: model.length,
      itemBuilder: (context, index) {
        return MyOrderCard(model: model[index],);
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 0,
          color: AppColors.primary,
        );
      },
    );
  }
}
