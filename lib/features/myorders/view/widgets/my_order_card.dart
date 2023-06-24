import 'package:flutter/material.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/myorders/models/order_model.dart';

class MyOrderCard extends StatelessWidget {
  final MyOrder model;
  const MyOrderCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.orderNumber,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Total ${model.grandTotal} Dhs',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model.orderDetails.length} items',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${AppHelper.dateFormat(model.createdAt.toLocal())} ${AppHelper.timeFormat(model.createdAt.toLocal())}',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
    );
  }
}
