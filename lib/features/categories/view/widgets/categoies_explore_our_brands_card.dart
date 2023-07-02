import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/categories/view/widgets/categories_brand_card.dart';

class CategoryExploreOurBrandsWidget extends StatelessWidget {
  const CategoryExploreOurBrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 26,
          ),
          child: Text(
            'Explore Our Brands'.tr,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.separated(
            padding: const EdgeInsets.only(
              left: 23,
              right: 23,
              bottom: 10,
            ),
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const CategoryBrandCard();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
          ),
        )
      ],
    );
  }
}
