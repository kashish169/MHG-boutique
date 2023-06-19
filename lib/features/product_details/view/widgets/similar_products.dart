import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
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
            vertical: 10,
          ),
          child: Text(
            'You might also like',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 22, color: AppColors.darkGrey),
          ),
        ),
        SizedBox(
          height: 320,
          child: ListView.builder(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: controller.model.relatedProducts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ProductCard(
                    model: controller.model.relatedProducts[index],
                    isDetails: true,
                    fromArrival: controller.fromArrival,
                  ),
                );
              }),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
