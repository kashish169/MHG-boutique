import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/product_details/controller/product_details_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';

class FavouriteWidget extends StatefulWidget {
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  int? inWishlist;
  final int? itemId;
  final String from;
  final bool fromArrival;

  FavouriteWidget(
      {Key? key,
      this.height,
      this.onTap,
      this.width,
      this.fromArrival = false,
      this.itemId,
      this.inWishlist,
      required this.from})
      : super(key: key);

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  @override
  Widget build(BuildContext context) {
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
            if (widget.itemId != null) {
              if (widget.inWishlist == 1) {
                bool res = await controller.removeFromWishList(widget.itemId!);
                if (res == true) {
                  widget.inWishlist = 0;
                  setState(() {});
                  if (widget.from == 'productDetails') {
                    List<ProductModel> temp = widget.fromArrival
                        ? Get.find<HomeController>().newArrivalsList
                        : Get.find<HomeController>().topSellersList;
                    for (int i = 0; i < temp.length; i++) {
                      if (temp[i].id == widget.itemId!) {
                        temp[i].inWishlist = 0;
                      }
                    }
                    Get.find<HomeController>()
                        .updateList(temp, widget.fromArrival);
                  }
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
                  if (widget.from == 'productDetails') {
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
              widget.inWishlist == 1 ? AppAssets.wishlist : AppAssets.favourtie,
              height: widget.height ?? 24,
              width: widget.width,
              color: widget.inWishlist == 1 ? AppColors.red : null,
              fit: widget.inWishlist == 1 ? BoxFit.fill : null,
            ),
          ));
    }));
  }
}
