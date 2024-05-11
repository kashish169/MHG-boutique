import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/view/widgets/home_video_test_widget.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/features/products_page/view/pages/product_page.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/net_image.dart';
import '../../../mainwrapper/controller/main_wrapper_controller.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  bool isSkip = true;
  SwiperController swiperController = SwiperController();

  @override
  void initState() {
    swiperController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    swiperController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Visibility(
      visible: controller.slidersList.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 2 / 2.6,
            width: AppDimensions.screenWidth(context),
            child: Swiper(
              autoplay: isSkip,
              controller: swiperController,
              autoplayDelay: 10000,
              duration: 1000,
              curve: Curves.fastLinearToSlowEaseIn,
              pagination: SwiperPagination(
                  margin: const EdgeInsets.only(top: 5),
                  builder: DotSwiperPaginationBuilder(
                    color: AppColors.lightGray3,
                    activeColor: AppColors.secondary,
                    size: 10.0,
                    activeSize: 9.0,
                  )),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    if (controller.slidersList[index].productId != null) {
                      Get.toNamed(
                        ProductDetailsPage.routeName,
                        arguments: {
                          "id": controller.slidersList[index].productId,
                          "name": '',
                          "fromArrival": false,
                        },
                      );
                    } else if (controller.slidersList[index].productId ==
                            null &&
                        controller.slidersList[index].categoryId != null) {
                      Get.toNamed(
                        ProductsPage.routeName,
                        arguments: {
                          "categoryId":
                              controller.slidersList[index].categoryId,
                        },
                      );
                    } else if (controller.slidersList[index].productId ==
                            null &&
                        controller.slidersList[index].categoryId == null) {
                      Get.find<MainWrapperController>().launchUrl(
                        controller.slidersList[index].link!,
                      );
                    }
                  },
                  child: controller.slidersList[index].videoLinkk != null
                      ? HomeVideoTestWidget(
                          videoLink: controller.slidersList[index].videoLinkk!,
                          endVideoFun: () {
                            Future.delayed(const Duration(milliseconds: 200),
                                () {
                              setState(() {
                                swiperController.next(animation: true);
                                isSkip = true;
                              });
                            });
                          },
                          startFun: () {
                            Future.delayed(const Duration(milliseconds: 200),
                                () {
                              setState(() {
                                isSkip = false;
                              });
                            });
                          },
                          height: MediaQuery.of(context).size.height * 2 / 2.6)
                      : NetImage(
                          image:
                              controller.slidersList[index].backgroundImageLink,
                          height: MediaQuery.of(context).size.height * 2 / 2.6,
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
      ),
    );
  }
}
