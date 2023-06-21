import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/mainwrapper/controller/main_wrapper_controller.dart';
import 'package:mhg/widgets/net_image.dart';

class HomeFooterSlider extends StatelessWidget {
  const HomeFooterSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Visibility(
      visible: controller.footerSlider.isEmpty ? false : true,
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
        child: SizedBox(
          height: AppDimensions.screenWidth(context) * 0.34,
          width: double.infinity,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Get.find<MainWrapperController>().launchUrl(
                    controller.footerSlider[index].link,
                  );
                },
                child: NetImage(
                  image: controller.footerSlider[index].backgroundImageLink,
                  height: AppDimensions.screenWidth(context) * 0.34,
                  width: AppDimensions.screenWidth(context),
                ),
              );
            },
            loop: false,
            itemCount: controller.footerSlider.length,
            outer: false,
          ),
        ),
      ),
    );
  }
}
