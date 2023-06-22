import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/counter_widget.dart';
import '../../../mycart/controller/my_cart_controller.dart';

class WishListCounterrWidget extends StatefulWidget {
  final WishListModel model;
  const WishListCounterrWidget({super.key, required this.model});

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
        onIncrease: (value) async {
          widget.model.isAddToBag = true;
          if (mounted) setState(() {});
          bool result = await Get.find<MyCartController>().increaseCartItem(
            cartItemId: widget.model.id,
            quantity: 1,
          );
          if (result == true) {
            widget.model.options.cartQuantity = value;
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
          );
          if (result == true) {
            widget.model.options.cartQuantity = value;
          }
          widget.model.isAddToBag = false;
          if (mounted) setState(() {});
        },
        loading: widget.model.isAddToBag,
      ),
    );
  }
}
