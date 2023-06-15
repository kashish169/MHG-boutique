import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../constants/app_colors.dart';
import 'custom_dot_swiper.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

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
            "What's New",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ),
        SizedBox(
          height: AppDimensions.screenWidth(context) / (3 / 4),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Get.toNamed(ProductDetailsPage.routeName);
                },
                child: NetImage(
                  image: controller.slidersList[index].backgroundImageLink,
                ),
              );
            },
            loop: false,
            itemCount: controller.slidersList.length,
            outer: true,
            pagination: SwiperPagination(
              builder: CustomDotSwiperPaginationBuilder(
                color: AppColors.primary,
                activeColor: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
