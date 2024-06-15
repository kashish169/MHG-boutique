import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/counter_widget.dart';
import '../../../mycart/controller/my_cart_controller.dart';

class WishListCounterrWidget extends StatefulWidget {
  final WishListModel model;
  final bool fromSearch;
  const WishListCounterrWidget({
    super.key,
    required this.model,
    this.fromSearch = false,
  });

  @override
  State<WishListCounterrWidget> createState() => _WishListCounterrWidgetState();
}

class _WishListCounterrWidgetState extends State<WishListCounterrWidget> {
  final controller = Get.find<WishListController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 10),
      child: CounterWidget(
        circleColor: AppColors.lightGray,
        countColor: AppColors.mediumLabel,
        buttonColor: AppColors.mediumLabel,
        count: widget.model.options.cartQuantity,
        circleSize: widget.fromSearch == true ? 35 : 18,
        iconSize: widget.fromSearch == true ? 25 : 15,
        onIncrease: (value) async {
          widget.model.isAddToBag = true;
          if (mounted) setState(() {});
          bool result = await Get.find<MyCartController>().increaseCartItem(
              cartItemId: widget.model.id,
              quantity: 1,
              variantId: widget.model.options.variantId);
          if (result == true) {
            Get.find<CheckoutController>().orderPrice();
            widget.model.options.cartQuantity = value;
            bool fromArrival = false;
            List<ProductModel> temp =
                Get.find<HomeController>().newArrivalsList;
            for (int i = 0; i < temp.length; i++) {
              if (temp[i].id == widget.model.id) {
                temp[i].inCart = 1;
                temp[i].cartQty = value;
                fromArrival = true;
              }
            }
            List<List<ProductModel>> temp2 =
                Get.find<HomeController>().topSellersList;
            for (int i = 0; i < temp2.length; i++) {
              for (int j = 0; j < temp2[i].length; j++) {
                if (temp2[i][j].id == widget.model.id) {
                  temp2[i][j].inCart = 1;
                  temp2[i][j].cartQty = value;
                  fromArrival = false;
                }
              }
            }
            Get.find<HomeController>().updateList(
                arrivals: fromArrival ? temp : null,
                topSellers: fromArrival ? null : temp2);
          }
          widget.model.isAddToBag = false;
          if (mounted) setState(() {});
        },
        onDecrease: (value) async {
          widget.model.isAddToBag = true;
          if (mounted) setState(() {});
          bool result = await Get.find<MyCartController>().decreaseCartItem(
              cartItemId: widget.model.id,
              quantity: 1,
              variantId: widget.model.options.variantId);
          if (result == true) {
            Get.find<CheckoutController>().orderPrice();
            widget.model.options.cartQuantity = value;
            bool fromArrival = false;
            List<ProductModel> temp =
                Get.find<HomeController>().newArrivalsList;
            for (int i = 0; i < temp.length; i++) {
              if (temp[i].id == widget.model.id) {
                temp[i].inCart = 1;
                temp[i].cartQty = value;
                fromArrival = true;
              }
            }
            List<List<ProductModel>> temp2 =
                Get.find<HomeController>().topSellersList;
            for (int i = 0; i < temp2.length; i++) {
              for (int j = 0; j < temp2[i].length; j++) {
                if (temp2[i][j].id == widget.model.id) {
                  temp2[i][j].inCart = 1;
                  temp2[i][j].cartQty = value;
                  fromArrival = false;
                }
              }
            }
            Get.find<HomeController>().updateList(
                arrivals: fromArrival ? temp : null,
                topSellers: fromArrival ? null : temp2);
          }
          widget.model.isAddToBag = false;
          if (mounted) setState(() {});
        },
        loading: widget.model.isAddToBag,
      ),
    );
  }
}
