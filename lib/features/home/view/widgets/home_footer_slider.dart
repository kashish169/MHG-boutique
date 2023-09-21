import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/mainwrapper/controller/main_wrapper_controller.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../product_details/view/pages/product_details_page.dart';
import '../../../products_page/view/pages/product_page.dart';

class HomeFooterSlider extends StatelessWidget {
  const HomeFooterSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Visibility(
      visible: controller.footerSlider.isEmpty ? false : true,
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
        child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (controller.footerSlider[index].productId != null) {
                    Get.toNamed(
                      ProductDetailsPage.routeName,
                      arguments: {
                        "id": controller.footerSlider[index].productId,
                        "name": '',
                        "fromArrival": false,
                      },
                    );
                  } else if (controller.footerSlider[index].productId == null &&
                      controller.footerSlider[index].categoryId != null) {
                    Get.toNamed(
                      ProductsPage.routeName,
                      arguments: {
                        "categoryId": controller.footerSlider[index].categoryId,
                      },
                    );
                  } else if (controller.footerSlider[index].productId == null &&
                      controller.footerSlider[index].categoryId == null) {
                    Get.find<MainWrapperController>().launchUrl(
                      controller.footerSlider[index].link ?? '',
                    );
                  }
                },
                child: NetImage(
                  image: controller.footerSlider[index].backgroundImageLink,
                  height: AppDimensions.screenWidth(context) * 1.2,
                  width: AppDimensions.screenWidth(context),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemCount: controller.footerSlider.length),
        // SizedBox(
        //   height: AppDimensions.screenWidth(context) * 0.34,
        //   width: double.infinity,
        //   child: Swiper(
        //     itemBuilder: (BuildContext context, int index) {
        //       return InkWell(
        //         onTap: () {
        //           Get.find<MainWrapperController>().launchUrl(
        //             controller.footerSlider[index].link,
        //           );
        //         },
        //         child: NetImage(
        //           image: controller.footerSlider[index].backgroundImageLink,
        //           height: AppDimensions.screenWidth(context) * 0.34,
        //           width: AppDimensions.screenWidth(context),
        //         ),
        //       );
        //     },
        //     loop: false,
        //     itemCount: controller.footerSlider.length,
        //     outer: false,
        //   ),
        // ),
      ),
    );
  }
}
