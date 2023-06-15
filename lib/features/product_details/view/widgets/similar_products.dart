import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';

class SimilarProductsWidget extends StatelessWidget {
  const SimilarProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            'You might also like',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 22, color: AppColors.darkGrey),
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
            itemCount: 2,
            builder: (ctx, index) {
              return InkWell(
                onTap: () {
                  Get.back();
                  Get.toNamed(ProductDetailsPage.routeName);
                },
                // child: const ProductCard(),
                //TODO
              );
            },
          ),
        ),
      ],
    );
  }
}
