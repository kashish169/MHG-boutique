import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import 'package:mhg/features/my_wish_list/view/widget/my_wish_list_body_buttons.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/delete_icon_button.dart';
import '../../../../widgets/three_bounce_loading.dart';
import 'my_wish_list_body_header.dart';
import 'my_wish_list_body_middle_text.dart';

class MyWishBody extends StatefulWidget {
  MyWishBody(
      {super.key,
      required this.model,
      required this.onTap,
      required this.addToBag});
  final WishListModel model;
  final void Function() onTap;
  final void Function() addToBag;

  @override
  State<MyWishBody> createState() => _MyWishBodyState();
}

class _MyWishBodyState extends State<MyWishBody> {
  final WishListController controller = Get.find();
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
      child: Material(
        shadowColor: AppColors.white2,
        elevation: 3,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                height: AppDimensions.productHeight(context) / 1.3,
                width: 120,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(12)),
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(12)),
                    child: NetImage(image: widget.model.options.imageLink)),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 35),
                        TopBodyHeader(title: widget.model.name),
                        const SizedBox(height: 10),
                        BodyMiddleText(
                          brand: widget.model.options.brand,
                          price: widget.model.price.toString(),
                        ),
                        BodyButtons(
                            addToBag: widget.addToBag, model: widget.model),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: widget.model.isDeleteItem
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
                              await controller
                                  .removeFromWishList(widget.model.id);
                              widget.model.isDeleteItem = false;
                              if (mounted) setState(() {});
                              controller.wishListItems.removeWhere(
                                (element) => element.id == widget.model.id,
                              );
                              // controller.getTotalCartPrice();
                            },
                          ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
/* var result = await controller.addProductToCart(
                              productId: controller.model.id,
                            );
                            if (result) {
                              controller.model.inCart = 1;
                              controller.model.cartQty = 1;
                              setState(() {});
                            } */