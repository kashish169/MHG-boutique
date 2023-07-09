import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/delete_icon_button.dart';
import '../../../../widgets/three_bounce_loading.dart';
import '../../controller/my_cart_controller.dart';
import '../../models/cart_model.dart';

class DeleteCartButton extends StatefulWidget {
  final CartModel model;
  const DeleteCartButton({super.key, required this.model});

  @override
  State<DeleteCartButton> createState() => _DeleteCartButtonState();
}

class _DeleteCartButtonState extends State<DeleteCartButton> {
  final controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return widget.model.isDeleteItem
        ? Container(
            height: 25,
            width: 25,
            margin: const EdgeInsets.all(8),
            child: LoadingThreeBounce(
              color: AppColors.primary,
            ),
          )
        : DeleteIconButton(
            onTap: () async {
              widget.model.isDeleteItem = true;
              if (mounted) setState(() {});
              await controller.deleteCartItem(widget.model.id);
              widget.model.isDeleteItem = false;
              if (mounted) setState(() {});
              controller.cartItemsList.removeWhere(
                (element) => element.id == widget.model.id,
              );
              controller.getTotalCartPrice();
              Get.find<CheckoutController>().orderPrice();
            },
          );
  }
}
