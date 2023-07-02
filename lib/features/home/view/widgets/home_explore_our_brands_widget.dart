import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/view/widgets/home_brand_card.dart';
import '../../controller/home_controller.dart';

class HomeExploreOurBrandsWidget extends StatelessWidget {
  const HomeExploreOurBrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
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
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            physics: const BouncingScrollPhysics(),
            itemCount: controller.brandsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return HomeBrandCard(
                model: controller.brandsList[index],
              );
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
