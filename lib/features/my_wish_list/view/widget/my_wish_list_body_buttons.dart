import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/primary_button.dart';
import '../../model/wish_list_model.dart';

class BodyButtons extends StatefulWidget {
  const BodyButtons({super.key, required this.addToBag, required this.model});
  final void Function() addToBag;
  final WishListModel model;
  @override
  State<BodyButtons> createState() => _BodyButtonsState();
}

class _BodyButtonsState extends State<BodyButtons> {
  final WishListController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: PrimaryButton(
              title: "Share",
              onTap: () {},
              fontSize: 12,
              color: AppColors.white,
              height: 35,
              reverseColor: true,
              isSelcted: true,
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
              ),
              child: PrimaryButton(
                title: "Add to Bag",
                isLoading: widget.model.isLoadingDelete,
                onTap: () async {
                  widget.model.isLoadingDelete = true;
                  if (mounted) setState(() {});
                  await controller.addProductToCart(productId: widget.model.id);
                  widget.model.isLoadingDelete = false;
                  if (mounted) setState(() {});
                },
                fontSize: 12,
                color: AppColors.primary,
                height: 35,
              )),
        ),
      ],
    );
  }
}
