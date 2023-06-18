import 'package:flutter/material.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import 'package:mhg/features/my_wish_list/view/widget/my_wish_list_body_buttons.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/delete_icon_button.dart';
import 'my_wish_list_body_header.dart';
import 'my_wish_list_body_middle_text.dart';

class MyWishBody extends StatelessWidget {
  const MyWishBody(
      {super.key,
      required this.model,
      required this.onTap,
      required this.addToBag});
  final WishListModel model;
  final void Function() onTap;
  final void Function() addToBag;
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
                height: 158,
                width: 120,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(12)),
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(12)),
                    child: NetImage(image: model.options.imageLink)),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        TopBodyHeader(title: model.name),
                        const SizedBox(height: 10),
                        BodyMiddleText(
                          brand: model.options.itemTag,
                          price: model.price.toString(),
                        ),
                        BodyButtons(addToBag: addToBag),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: DeleteIconButton(
                      onTap: onTap,
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
