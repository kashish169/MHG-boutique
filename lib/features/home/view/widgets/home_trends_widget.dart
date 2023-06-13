import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import '../../../../widgets/view_all_button.dart';

class HomeTrendsWidget extends StatelessWidget {
  const HomeTrendsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Trends',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                ),
              ),
              ViewAllButton(onTap: () {}),
            ],
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
            itemCount: 4,
            builder: (ctx, index) {
              return ProductCard();
            },
          ),
        ),
      ],
    );
  }
}
