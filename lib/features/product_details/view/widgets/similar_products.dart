import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
// import 'package:mhg/constants/app_dimensions.dart';
// import 'package:mhg/features/home/controller/home_controller.dart';
// import 'package:mhg/features/home/view/widgets/home_top_sellers_widget.dart';
// import 'package:mhg/widgets/loading_widget.dart';
// import 'package:mhg/widgets/retry_button.dart';
import '../../../home/view/widgets/product_card.dart';
import '../../controller/product_details_controller.dart';

class SimilarProductsWidget extends StatelessWidget {
  const SimilarProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Text(
            'You might also like'.tr,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 18, color: AppColors.darkGrey),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                for (int index = 0;
                    index < controller.model.relatedProducts.length;
                    index++)
                  Padding(
                    padding:const EdgeInsetsDirectional.only(end: 8),
                    child: ProductCard(
                      model: controller.model.relatedProducts[index],
                      isDetails: true,
                      fromArrival: controller.fromArrival,
                    ),
                  )
              ],
            ),
          ),
        ),

        // SizedBox(
        //   height: AppDimensions.screenWidth(context) * 0.86,
        //   child: ListView.builder(
        //       padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        //       scrollDirection: Axis.horizontal,
        //       itemCount: controller.model.relatedProducts.length,
        //       itemBuilder: (context, index) {
        //         return Padding(
        //           padding: const EdgeInsets.symmetric(vertical: 10),
        //           child: ProductCard(
        //             model: controller.model.relatedProducts[index],
        //             isDetails: true,
        //             fromArrival: controller.fromArrival,
        //           ),
        //         );
        //       }),
        // ),
        const SizedBox(height: 10),
      ],
    );
  }
}
