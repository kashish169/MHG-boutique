import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/view/widgets/home_category_card.dart';
import '../../controller/home_controller.dart';

class HomeShopByCategoryWidget extends StatelessWidget {
  const HomeShopByCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          child: Text(
            "Shop By Category".tr,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 16,
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
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: controller.categories.length,
              builder: (ctx, index) {
                return HomeCategoryCard(
                  model: controller.categories[index],
                );
              },
            )),
      ],
    );
  }
}
