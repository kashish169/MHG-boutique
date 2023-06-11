import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:mhg/features/home/view/widgets/home_slider.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeSlider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DynamicHeightGridView(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              itemCount: 2,
              builder: (ctx, index) {
                return ProductCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
