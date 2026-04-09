import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/myorders/models/order_model.dart';
import '../../../../constants/app_colors.dart';
import 'my_order_card.dart';

class MyOrdersListWidget extends StatelessWidget {
  final List<MyOrder> model;
  final String name;
  const MyOrdersListWidget(
      {super.key, required this.model, required this.name});

  @override
  Widget build(BuildContext context) {
    return model.isEmpty
        ? Center(
            child: Text(
              '$name ${'will appear here'.tr}',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          )
        : ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: model.length,
            itemBuilder: (context, index) {
              return MyOrderCard(
                model: model[index],
              );
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
