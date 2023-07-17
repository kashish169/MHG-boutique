import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/counter_widget.dart';

class ProductCounter extends StatefulWidget {
  final ProductModel model;
  const ProductCounter({super.key, required this.model});

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  final controller = Get.find<WishListController>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 10),
        child: CounterWidget(
          circleSize: 35,
          iconSize: 25,
          circleColor: AppColors.lightGray,
          countColor: AppColors.mediumLabel,
          buttonColor: AppColors.mediumLabel,
          count: widget.model.cartQty,
          onIncrease: (value) async {
            controller.isLoading.value = true;
            if (mounted) setState(() {});
            // bool result = await Get.find<MyCartController>().increaseCartItem(
            //   cartItemId: widget.model.id,
            //   quantity: 1,
            //     variantId: widget.model.variantId
            // );
            // if (result == true) {
            //   widget.model.cartQty = value;
            //   widget.model.inCart = 1;
            //   bool fromArrival = false;
            //   List<ProductModel> temp =
            //       Get.find<HomeController>().newArrivalsList;
            //   for (int i = 0; i < temp.length; i++) {
            //     if (temp[i].id == widget.model.id) {
            //       temp[i].inCart = 1;
            //       temp[i].cartQty = value;
            //       fromArrival = true;
            //     }
            //   }
            //   List<ProductModel> temp2 =
            //       Get.find<HomeController>().topSellersList;
            //   for (int i = 0; i < temp2.length; i++) {
            //     if (temp2[i].id == widget.model.id) {
            //       temp2[i].inCart = 1;
            //       temp2[i].cartQty = value;
            //       fromArrival = false;
            //     }
            //   }
            //   Get.find<HomeController>()
            //       .updateList(fromArrival == true ? temp : temp2, fromArrival);
            // }
            controller.isLoading.value = false;
            if (mounted) setState(() {});
          },
          onDecrease: (value) async {
            controller.isLoading.value = true;
            if (mounted) setState(() {});
            // bool result = await Get.find<MyCartController>().decreaseCartItem(
            //   cartItemId: widget.model.id,
            //   quantity: 1,
            //     variantId: widget.model.variantId
            // );
            // if (result == true) {
            //   widget.model.cartQty = value;
            //   widget.model.inCart = 1;
            //   bool fromArrival = false;
            //   List<ProductModel> temp =
            //       Get.find<HomeController>().newArrivalsList;
            //   for (int i = 0; i < temp.length; i++) {
            //     if (temp[i].id == widget.model.id) {
            //       temp[i].inCart = 1;
            //       temp[i].cartQty = value;
            //       fromArrival = true;
            //     }
            //   }
            //   List<ProductModel> temp2 =
            //       Get.find<HomeController>().topSellersList;
            //   for (int i = 0; i < temp2.length; i++) {
            //     if (temp2[i].id == widget.model.id) {
            //       temp2[i].inCart = 1;
            //       temp2[i].cartQty = value;
            //       fromArrival = false;
            //       log("llllllll");
            //     }
            //   }
            //   Get.find<HomeController>()
            //       .updateList(fromArrival == true ? temp : temp2, fromArrival);
            // }
            controller.isLoading.value = false;
            if (mounted) setState(() {});
          },
          loading: controller.isLoading.value,
        ),
      ),
    );
  }
}
