import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/view/widgets/custom_dot_swiper.dart';
import 'package:mhg/widgets/heart_widget.dart';

class ProductDetailsSlider extends StatelessWidget {
  const ProductDetailsSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 390,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                AppAssets.img1,
                fit: BoxFit.cover,
              );
            },
            viewportFraction: 1,
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
        ),
        // Align(
        //   alignment: Alignment.topRight,
        //   child: IconButton(
        //     onPressed: (){},
        //     icon: Image.asset(AppAssets.upload,
        //         color: AppColors.primary,
        //         height:22),
        //   ),
        // ),

        const SizedBox(
          height: 390,
          child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                child: FavouriteWidget(
                  height: 31,
                ),
              )),
        )
      ],
    );
  }
}
