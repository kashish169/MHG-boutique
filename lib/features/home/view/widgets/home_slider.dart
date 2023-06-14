import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import '../../../../constants/app_colors.dart';
import 'custom_dot_swiper.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.screenWidth(context) / (16 / 9),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: InkWell(
              onTap: (){
                Get.toNamed(ProductPage.routeName);
              },
              child: Image.asset(
                AppAssets.img1,
                fit: BoxFit.contain,
              ),
            ),
          );
        },
        viewportFraction: 0.9,
        loop: false,
        itemCount: 3,
        outer: true,
        pagination: SwiperPagination(
          builder: CustomDotSwiperPaginationBuilder(
            color: AppColors.primary,
            activeColor: AppColors.white,
          ),
        ),
      ),
    );
  }
}
