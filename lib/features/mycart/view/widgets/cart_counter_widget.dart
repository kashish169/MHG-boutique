import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/mycart/models/cart_model.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/counter_widget.dart';
import '../../controller/my_cart_controller.dart';

class CartCounterWidget extends StatefulWidget {
  final CartModel model;
  const CartCounterWidget({super.key, required this.model});

  @override
  State<CartCounterWidget> createState() => _CartCounterWidgetState();
}

class _CartCounterWidgetState extends State<CartCounterWidget> {
  final controller = Get.find<MyCartController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 10),
      child: CounterWidget(
        circleColor: AppColors.lightGray,
        countColor: AppColors.mediumLabel,
        buttonColor: AppColors.mediumLabel,
        count: widget.model.qty,
        onIncrease: (value) async {
          widget.model.isLoadingQuantity = true;
          if (mounted) setState(() {});
          bool result = await controller.increaseCartItem(
            cartItemId: widget.model.id,
            quantity: 1,
          );
          if (result == true) {
            widget.model.qty = value;
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
            List<ProductModel> temp2 =
                Get.find<HomeController>().topSellersList;
            for (int i = 0; i < temp2.length; i++) {
              if (temp2[i].id == widget.model.id) {
                temp2[i].inCart = 1;
                temp2[i].cartQty = value;
                fromArrival = false;
              }
            }
            Get.find<HomeController>()
                .updateList(fromArrival == true ? temp : temp2, fromArrival);
          }
          widget.model.isLoadingQuantity = false;
          if (mounted) setState(() {});
          controller.getTotalCartPrice();
        },
        onDecrease: (value) async {
          widget.model.isLoadingQuantity = true;
          if (mounted) setState(() {});
          bool result = await controller.decreaseCartItem(
            cartItemId: widget.model.id,
            quantity: 1,
          );
          if (result == true) {
            widget.model.qty = value;
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
            List<ProductModel> temp2 =
                Get.find<HomeController>().topSellersList;
            for (int i = 0; i < temp2.length; i++) {
              if (temp2[i].id == widget.model.id) {
                temp2[i].inCart = 1;
                temp2[i].cartQty = value;
                fromArrival = false;
              }
            }
            Get.find<HomeController>()
                .updateList(fromArrival == true ? temp : temp2, fromArrival);
          }
          widget.model.isLoadingQuantity = false;
          if (mounted) setState(() {});
          controller.getTotalCartPrice();
        },
        loading: widget.model.isLoadingQuantity,
      ),
    );
  }
}
