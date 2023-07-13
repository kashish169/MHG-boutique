import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';
import 'package:mhg/features/search/controller/search_controller.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';

import '../app/app.dart';
import '../features/auth/signin/view/pages/sign_in_page.dart';
import '../features/mainwrapper/controller/main_wrapper_controller.dart';

class FavouriteWidget extends StatefulWidget {
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  int? inWishlist;
  final int? itemId;
  final String from;
  final bool fromArrival;
  final bool? isProductDetails;

  FavouriteWidget(
      {Key? key,
      this.height,
      this.onTap,
      this.width,
      this.fromArrival = false,
      this.itemId,
      this.inWishlist,
      this.isProductDetails = false,
      required this.from})
      : super(key: key);

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  @override
  Widget build(BuildContext context) {
    final mainController = Get.find<MainWrapperController>();
    return InkWell(child: GetX<WishListController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return Container(
          width: 30,
          height: 30,
          margin: const EdgeInsetsDirectional.all(10),
          child: const LoadingThreeBounce(),
        );
      }
      return IconButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            if (App.token.isEmpty) {
              Get.toNamed(
                SignInPage.routeName,
                arguments: {
                  'country': App.countryName,
                  'is_guest': true,
                  'country_code': mainController.globalGuestCountryCode,
                  'flag': mainController.globalGuestCountryFlag,
                  'id': mainController.globalGuestCountryId,
                },
              );
              return;
            }
            if (widget.itemId != null) {
              if (widget.inWishlist == 1) {
                bool res = await controller.removeFromWishList(widget.itemId!);
                if (res == true) {
                  widget.inWishlist = 0;
                  setState(() {});

                  List<ProductModel> temp = widget.fromArrival
                      ? Get.find<HomeController>().newArrivalsList
                      : Get.find<HomeController>().topSellersList;
                  for (int i = 0; i < temp.length; i++) {
                    if (temp[i].id == widget.itemId!) {
                      temp[i].inWishlist = 0;
                    }
                  }
                  if (widget.from == 'product') {
                    Get.find<ProductsController>()
                        .updateList(temp, widget.fromArrival);
                  }
                  if (widget.from == 'search') {
                    Get.find<SearchingController>()
                        .updateList(temp, widget.fromArrival);
                  }
                  Get.find<HomeController>()
                      .updateList(temp, widget.fromArrival);
                }
                // if(res==true){
                //   if(from=='home'){
                //     Get.find<HomeController>().getHome();
                //   }
                //   if(from=='productDetails'){
                //     Get.find<ProductDetailsController>().productId=0;
                //
                //   }
                // }
              } else {
                bool res = await controller.addToWishList(widget.itemId!);
                if (res == true) {
                  widget.inWishlist = 1;

                  setState(() {});

                  List<ProductModel> temp = widget.fromArrival
                      ? Get.find<HomeController>().newArrivalsList
                      : Get.find<HomeController>().topSellersList;
                  for (int i = 0; i < temp.length; i++) {
                    if (temp[i].id == widget.itemId!) {
                      temp[i].inWishlist = 1;
                    }
                  }
                  Get.find<HomeController>()
                      .updateList(temp, widget.fromArrival);
                }
                // if(res==true){
                //   if(from=='home'){
                //     Get.find<HomeController>().getHome();
                //   }
                //   if(from=='productDetail'){
                //     Get.find<ProductDetailsController>().productId=1;
                //
                //   }
                // }
              }
            }
          },
          icon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              (widget.inWishlist == 1)
                  ? AppAssets.wishlist
                  : (widget.inWishlist == 0 && widget.isProductDetails == true)
                      ? AppAssets.blackHeart
                      : AppAssets.favourtie,
              height: widget.height ?? 18,
              width: widget.width,
              color: (widget.inWishlist == 0) ? null : AppColors.red,
              fit: (widget.inWishlist == 0) ? null : BoxFit.fill,
            ),
          ));
    }));
  }
}
