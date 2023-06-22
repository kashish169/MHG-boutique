import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';
import 'my_order_card.dart';

class MyOrdersListWidget extends StatelessWidget {
  const MyOrdersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return MyOrderCard();
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
