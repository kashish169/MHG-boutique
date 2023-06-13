import 'package:flutter/material.dart';
import '../widgets/bottom_cart_widget.dart';
import '../widgets/my_cart_card.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(18),
            itemCount: 5,
            itemBuilder: (context, index) {
              return MyCartCard();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 9);
            },
          ),
        ),
        const BottomCartWidget(),
      ],
    );
  }
}
