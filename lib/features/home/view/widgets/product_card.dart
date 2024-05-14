import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import 'package:mhg/features/product_details/controller/product_details_controller.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../core/languages/languages.dart';
import '../../../../widgets/heart_widget.dart';
import '../../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? model;
  final bool isDetails;
  final bool isProductPage;
  final bool isSearch;
  final bool fromArrival;
  final bool? isWishList;
  final WishListModel? wishListModel;
  final bool isHomePage;

  const ProductCard(
      {super.key,
      this.model,
      this.isDetails = false,
      this.isProductPage = false,
      this.isHomePage = false,
      this.isSearch = false,
      this.fromArrival = false,
      this.wishListModel,
      this.isWishList = false});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<MainWrapperController>();
    final profileController = Get.find<ProfileController>();

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
                  ? isAR()
                      ? model!.frProductName
                      : model!.enProductName
                  : wishListModel!.name,
              "fromArrival": fromArrival
            },
          );
        }
      },
      child: Container(
        width: 150,
        // margin: const EdgeInsetsDirectional.only(end: 12),
        decoration: BoxDecoration(
          color: AppColors.white,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NetImage(
                  isProductCard: true,
                  image: isWishList == false
                      ? model!.primaryImageLink
                      : wishListModel!.options.imageLink,
                  height: AppDimensions.productHeight(context) * 0.97,
                  width: 182,
                ),
                if (!isHomePage)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 5),
                        child: Text(
                          isWishList == false
                              ? model!.enProductName
                              : wishListModel!.name,
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.black3,
                                fontSize: 16,
                              ),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      // SizedBox(
                      //   height: 30,
                      //   child: Padding(
                      //     padding:
                      //         const EdgeInsetsDirectional.symmetric(horizontal: 5),
                      //     child: Text(
                      //       isWishList == false
                      //           ? model!.enProductName
                      //           : wishListModel!.name,
                      //       maxLines: 2,
                      //       textAlign: TextAlign.start,
                      //       overflow: TextOverflow.ellipsis,
                      //       style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      //             fontSize: 12,
                      //           ),
                      //     ),
                      //   ),
                      // ),

                      Obx(() => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Visibility(
                                  visible: double.parse(
                                        isWishList == false
                                            ? model!.discount
                                            : wishListModel!.discount
                                                .toString(),
                                      ).round() !=
                                      0,
                                  child: Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: model != null
                                          ? Text(
                                              model!.isGiveAway == 1
                                                  ? "From "
                                                      '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.price : model!.price}'
                                                  : '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.price : model!.price}',
                                              textAlign: TextAlign.start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall
                                                  ?.copyWith(
                                                    fontSize: 13,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                            )
                                          : wishListModel != null
                                              ? Text(
                                                  (wishListModel!.options
                                                              .isGiveAway ==
                                                          1)
                                                      ? "From "
                                                          '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.options.discountPrice : model!.discountPrice}'
                                                      : '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.options.discountPrice : model!.discountPrice}',
                                                  textAlign: TextAlign.start,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 13),
                                                )
                                              : Text(
                                                  '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.price : model!.price}',
                                                  textAlign: TextAlign.start,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall
                                                      ?.copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                      ),
                                                ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                    visible: double.parse(
                                          isWishList == false
                                              ? model!.discount
                                              : wishListModel!.discount
                                                  .toString(),
                                        ).round() !=
                                        0,
                                    child: const SizedBox(width: 10)),
                                double.parse(
                                          isWishList == false
                                              ? model!.discount
                                              : wishListModel!.discount
                                                  .toString(),
                                        ).round() ==
                                        0
                                    ? FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: model != null
                                            ? Text(
                                                (model!.isGiveAway == 1)
                                                    ? "From "
                                                        '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.options.discountPrice : model!.discountPrice}'
                                                    : '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.options.discountPrice : model!.discountPrice}',
                                                textAlign: TextAlign.start,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black
                                                            .withOpacity(0.4),
                                                        fontSize: 12),
                                              )
                                            : wishListModel != null
                                                ? Text(
                                                    (wishListModel!.options
                                                                .isGiveAway ==
                                                            1)
                                                        ? "From "
                                                            '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.options.discountPrice : model!.discountPrice}'
                                                        : '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.options.discountPrice : model!.discountPrice}',
                                                    textAlign: TextAlign.start,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displaySmall
                                                        ?.copyWith(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13),
                                                  )
                                                : Text(
                                                    '${profileController.currnecy.value} ${isWishList == true ? wishListModel!.options.discountPrice : model!.discountPrice}',
                                                    textAlign: TextAlign.start,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displaySmall
                                                        ?.copyWith(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 13),
                                                  ),
                                      )
                                    : Expanded(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            '${profileController.currnecy.value} ${isWishList == false ? model!.discountPrice : wishListModel!.options.discountPrice}',
                                            textAlign: TextAlign.start,
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
                          )),
                      const SizedBox(height: 10),
                      // StatefulBuilder(builder: (context, setState) {
                      //   return model?.inCart == 1
                      //       ? ProductCounter(
                      //           model: model!,
                      //         )
                      //       : wishListModel?.options.inCart == 1
                      //           ? Padding(
                      //               padding: const EdgeInsets.only(bottom: 10),
                      //               child: WishListCounterrWidget(
                      //                 model: wishListModel!,
                      //                 fromSearch: true,
                      //               ),
                      //             )
                      //           : Padding(
                      //               padding:
                      //                   const EdgeInsets.symmetric(horizontal: 8.0),
                      //               child: PrimaryButton(
                      //                 fontSize: 16,
                      //                 height: 35,
                      //                 title: 'Add to Bag'.tr,
                      //                 isLoading: model?.isLoading ??
                      //                     wishListModel!.isAddToBag,
                      //                 color: AppColors.secondary,
                      //                 onTap: () async {
                      //                   if (App.token.isEmpty) {
                      //                     Get.toNamed(
                      //                       SignInPage.routeName,
                      //                       arguments: {
                      //                         'country': App.countryName,
                      //                         'is_guest': true,
                      //                         'country_code':
                      //                             controller.globalGuestCountryCode,
                      //                         'flag':
                      //                             controller.globalGuestCountryFlag,
                      //                         'id': controller.globalGuestCountryId,
                      //                       },
                      //                     );
                      //                     return;
                      //                   }
                      //                   if (wishListModel != null) {
                      //                     wishListModel?.isAddToBag = true;
                      //                   } else {
                      //                     model!.isLoading = true;
                      //                   }
                      //                   setState(() {});
                      //                   var result =
                      //                       await controller.addProductToCart(
                      //                     productId: model?.id ?? wishListModel!.id,
                      //                   );
                      //                   if (wishListModel != null) {
                      //                     wishListModel?.isAddToBag = false;
                      //                   } else {
                      //                     model!.isLoading = false;
                      //                   }
                      //                   if (result) {
                      //                     if (wishListModel != null) {
                      //                       wishListModel?.options.inCart = 1;
                      //                       wishListModel?.options.cartQuantity = 1;
                      //                     } else {
                      //                       model!.inCart = 1;
                      //                       model!.cartQty = 1;
                      //                     }
                      //                     setState(() {});
                      //                   }
                      //                 },
                      //                 width: double.infinity,
                      //                 elevation: 0,
                      //               ),
                      //             );
                      // }),
                    ],
                  ),
                if (!isHomePage)
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
            )
          ],
        ),
      ),
    );
  }
}
