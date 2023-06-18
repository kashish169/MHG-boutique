import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/product_details/controller/product_details_controller.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../widgets/heart_widget.dart';
import '../../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel model;
  final bool isDetails;
  final bool fromArrival;

  const ProductCard({
    super.key,
    required this.model,
    this.isDetails = false,
    this.fromArrival = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (isDetails) {
          final controller = Get.find<ProductDetailsController>();
          controller.productId = model.id;
          controller.productName.value = model.enProductName;
          controller.getProductDetails();
        } else {
          Get.toNamed(
            ProductDetailsPage.routeName,
            arguments: {
              "id": model.id,
              "name": model.enProductName,
              "fromArrival":fromArrival
            },
          );
        }
      },
      child: Container(
        width: 182,
        margin: const EdgeInsetsDirectional.only(end: 12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: AppColors.shadow(0.4),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadiusDirectional.vertical(
                    top: Radius.circular(20),
                  ),
                  child: NetImage(
                    image: model.primaryImageLink,
                    height: 229,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  model.enProductName,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                      ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Row(
                    children: [
                      Visibility(
                        visible: double.parse(
                              model.discount,
                            ).round() !=
                            0,
                        child: Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Dhs. ${model.price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Dhs. ${model.discountPrice}',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            FavouriteWidget(
              from: isDetails==true?'productDetails':'home',
              itemId: model.id,
              inWishlist: model.inWishlist,
              fromArrival: fromArrival,
            ),
          ],
        ),
      ),
    );
  }
}
