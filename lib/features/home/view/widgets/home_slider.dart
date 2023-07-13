import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../mainwrapper/controller/main_wrapper_controller.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppDimensions.screenWidth(context) * 1.2,
          width: AppDimensions.screenWidth(context),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Get.find<MainWrapperController>().launchUrl(
                    controller.slidersList[index].link,
                  );
                },
                child: NetImage(
                  image: controller.slidersList[index].backgroundImageLink,
                  height: AppDimensions.screenWidth(context) * 1.2,
                  width: AppDimensions.screenWidth(context),
                ),
              );
            },
            loop: false,
            itemCount: controller.slidersList.length,
            outer: true,
          ),
        ),
      ],
    );
  }
}
