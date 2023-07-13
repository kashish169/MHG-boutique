import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:mhg/core/languages/languages.dart';
import 'package:mhg/core/services/deep_link_service.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/my_wish_list/view/widget/wish_list_counter.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: PrimaryButton(
              title: "Share".tr,
              onTap: () async {
                DeepLinkSevice.shareProduct(widget.model.id);
              },
              fontSize: 12,
              color: AppColors.secondary,
              height: 30,
              fontColor: AppColors.white,
              // reverseColor: true,
              // isSelcted: false,
            ),
          ),
        ),
        Expanded(child: StatefulBuilder(builder: (context, setState) {
          return widget.model.options.inCart == 0
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: PrimaryButton(
                    title: "Add to Bag".tr,
                    isLoading: widget.model.isAddToBag,
                    onTap: () async {
                      widget.model.isAddToBag = true;
                      if (mounted) setState(() {});
                      var result = await controller.addProductToCart(
                          productId: widget.model.id);
                      if (result) {
                        widget.model.options.inCart = 1;
                        widget.model.options.cartQuantity = 1;
                        setState(() {});
                      }
                      widget.model.isAddToBag = false;
                      if (mounted) setState(() {});
                    },
                    fontSize: 12,
                    color: AppColors.secondary,
                    height: 30,
                  ))
              : Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: WishListCounterrWidget(model: widget.model),
                );
        })),
      ],
    );
  }
}
