import 'package:card_swiper/card_swiper.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/view/widgets/custom_dot_swiper.dart';
import 'package:mhg/features/home/view/widgets/home_slider.dart';
import 'package:mhg/features/home/view/widgets/home_trends_widget.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/widgets/heart_widget.dart';

class SimilarProductsWidget extends StatelessWidget {
  const SimilarProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            'You might also like',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 22, color: const Color(0XFF515C6F)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: DynamicHeightGridView(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            itemCount: 2,
            builder: (ctx, index) {
              return InkWell(
                  onTap: () {
                    Get.back();
                    Get.toNamed(ProductDetailsPage.routeName);
                  },
                  child: const ProductCard());
            },
          ),
        ),
        // Container(
        //   height: AppDimensions.screenWidth(context) / 1.7,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     color: const Color(0XFFF8F8F8),
        //   ),
        //   child: Swiper(
        //     itemBuilder: (BuildContext context, int index) {
        //       return Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 8),
        //         child: Container(
        //           decoration: BoxDecoration(
        //               image: DecorationImage(
        //                   fit: BoxFit.fill,
        //                   image: AssetImage(
        //                     AppAssets.img1,
        //                   ))),
        //           child:  Padding(
        //             padding: const EdgeInsets.only(left: 10),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 const Align(
        //                   alignment: Alignment.topRight,
        //                   child: HeartWidget(
        //                     height: 35,
        //                   ),
        //                 ),
        //                 const Expanded(child: SizedBox()),
        //                Container(
        //                  width: double.infinity,
        //                  decoration: BoxDecoration(
        //                    color: Colors.white.withOpacity(.1)
        //                  ),
        //                  child: Column(
        //                    crossAxisAlignment: CrossAxisAlignment.start,
        //                    children: [
        //                      Text('Syond',style:Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 16,
        //                          color: const Color(0XFF515C6F)),),
        //                      const SizedBox(
        //                        height: 5,
        //                      ),
        //                      Text('Dhs. 495.00',
        //                        style:Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 14,
        //                          color: const Color(0XFF515C6F)
        //                        ),),
        //                      const SizedBox(height: 5,)
        //                    ],
        //                  ),
        //                )
        //               ],
        //             ),
        //           ),
        //         ),
        //       );
        //     },
        //     viewportFraction: 0.5,
        //     loop: false,
        //     itemCount: 5,
        //     outer: true,
        //   ),
        // )
      ],
    );
  }
}
