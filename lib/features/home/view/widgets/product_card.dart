import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import 'package:mhg/features/product_details/controller/product_details_controller.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_counter_widget.dart';
import 'package:mhg/widgets/net_image.dart';
import 'package:mhg/widgets/product_counter.dart';
import '../../../../widgets/heart_widget.dart';
import '../../../../widgets/rating_widget.dart';
import '../../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? model;
  final bool isDetails;
  final bool isProductPage;
  final bool isSearch;
  final bool fromArrival;
  final bool? isWishList;
  final WishListModel? wishListModel;

  const ProductCard(
      {super.key,
      this.model,
      this.isDetails = false,
      this.isProductPage = false,
      this.isSearch = false,
      this.fromArrival = false,
      this.wishListModel,
      this.isWishList = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (isDetails) {
          final controller = Get.find<ProductDetailsController>();
          controller.productId = model!.id;
          controller.productName.value = model!.enProductName;
          controller.getProductDetails();
        } else {
          Get.toNamed(
            ProductDetailsPage.routeName,
            arguments: {
              "id": isWishList == false ? model!.id : wishListModel!.id,
              "name": isWishList == false
                  ? model!.enProductName
                  : wishListModel!.name,
              "fromArrival": fromArrival
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
                      image: isWishList == false
                          ? model!.primaryImageLink
                          : wishListModel!.options.imageLink,
                      height: AppDimensions.productHeight(context)),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            isWishList == false
                                ? model!.enProductName
                                : wishListModel!.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Expanded(
                        child: RatingWidget(),
                      ),
                    ],
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
                              isWishList == false
                                  ? model!.discount
                                  : wishListModel!.discount.toString(),
                            ).round() !=
                            0,
                        child: Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Dhs. ${isWishList == false ? model!.price : wishListModel!.price}',
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
                      double.parse(
                                isWishList == false
                                    ? model!.discount
                                    : wishListModel!.discount.toString(),
                              ).round() ==
                              0
                          ? FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Dhs. ${isWishList == false ? model!.discountPrice : wishListModel!.options.discountPrice}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            )
                          : Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Dhs. ${isWishList == false ? model!.discountPrice : wishListModel!.options.discountPrice}',
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
                StatefulBuilder(builder: (context, setState) {
                  return model?.inCart == 1
                      ? ProductCounter(
                          model: model!,
                        )
                      : const SizedBox();
                }),
              ],
            ),
            FavouriteWidget(
              from: isProductPage
                  ? 'product'
                  : isSearch
                      ? 'search'
                      : isDetails == true
                          ? 'productDetails'
                          : 'home',
              itemId: isWishList == false ? model!.id : wishListModel!.id,
              inWishlist: isWishList == false ? model!.inWishlist : 1,
              fromArrival: false,
            ),
          ],
        ),
      ),
    );
  }
}
