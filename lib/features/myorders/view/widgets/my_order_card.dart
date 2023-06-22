import 'package:flutter/material.dart';

class MyOrderCard extends StatelessWidget {
  const MyOrderCard({super.key});

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
                    'Order #223455',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Total 2500 Dhs',
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
                    '4 items',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '26/05/2023 11:12 PM',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5),
            Icon(
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
    );
  }
}
