import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/view/widgets/home_video_test_widget.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/features/products_page/view/pages/product_page.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/net_image.dart';
import '../../../mainwrapper/controller/main_wrapper_controller.dart';
import '../../models/slider_model.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key, required this.sliders});
  final List<SliderModel> sliders;

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  bool isSkip = true;
  SwiperController swiperController = SwiperController();

  @override
  void initState() {
    // swiperController.addListener(() {
    //   Future.delayed(const Duration(milliseconds: 500), () {
    //     setState(() {});
    //   });
    // });
    super.initState();
  }

  @override
  void dispose() {
    swiperController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.sliders.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height * 2 / 2.6,
            width: double.infinity,
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
                    size: widget.sliders.length <= 1 ? 0 : 10.0,
                    activeSize: widget.sliders.length <= 1 ? 0 : 9.0,
                  )),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    if (widget.sliders[index].productId != null) {
                      Get.toNamed(
                        ProductDetailsPage.routeName,
                        arguments: {
                          "id": widget.sliders[index].productId,
                          "name": '',
                          "fromArrival": false,
                        },
                      );
                    } else if (widget.sliders[index].productId == null &&
                        widget.sliders[index].categoryId != null) {
                      Get.toNamed(
                        ProductsPage.routeName,
                        arguments: {
                          "categoryId": widget.sliders[index].categoryId,
                        },
                      );
                    } else if (widget.sliders[index].productId == null &&
                        widget.sliders[index].categoryId == null) {
                      Get.find<MainWrapperController>().launchUrl(
                        widget.sliders[index].link!,
                      );
                    }
                  },
                  child: widget.sliders[index].videoLinkk != null
                      ? HomeVideoTestWidget(
                          videoLink: widget.sliders[index].videoLinkk!,
                          endVideoFun: widget.sliders.length > 1
                              ? () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          content: Container(
                                    color: Colors.white,
                                    child: const Text('LOL',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 28)),
                                  )));
                                  Future.delayed(
                                      const Duration(milliseconds: 200), () {
                                    setState(() {
                                      swiperController.next(animation: true);
                                    });
                                  });
                                }
                              : null,
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
                          image: widget.sliders[index].backgroundImageLink,
                          height: MediaQuery.of(context).size.height * 2 / 2.6,
                          width: double.infinity),
                );
              },
              loop: false,
              itemCount: widget.sliders.length,
              outer: false,
            ),
          ),
        ],
      ),
    );
  }
}
