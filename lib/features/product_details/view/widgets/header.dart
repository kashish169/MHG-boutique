import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/view/widgets/custom_dot_swiper.dart';
import 'package:mhg/widgets/heart_widget.dart';
class Head extends StatelessWidget {
  const Head({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(

          height: AppDimensions.screenHeight(context)/2.8,
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
        SizedBox(
          height: (AppDimensions.screenHeight(context)/2.8)-40,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                const SizedBox(width: 5,),
                Image.asset(AppAssets.starIcon,height: 17,),
                const SizedBox(width: 5,),
                Text('250 pts',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 22,
                    color: const Color(0XFF1B291E),
                    fontWeight: FontWeight.w600
                ),),


              ],
            ),

          ),
        ),
        SizedBox(
          height: AppDimensions.screenHeight(context)/2.94,
          child: const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: HeartWidget(),
              )),
        )
      ],
    );
  }
}