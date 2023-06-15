import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:mhg/features/home/view/widgets/home_category_card.dart';

class HomeShopByCategoryWidget extends StatelessWidget {
  const HomeShopByCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          child: Text(
            "Shop By Category",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: DynamicHeightGridView(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              itemCount: 8,
              builder: (ctx, index) {
                return HomeCategoryCard();
              },
            )),
      ],
    );
  }
}
