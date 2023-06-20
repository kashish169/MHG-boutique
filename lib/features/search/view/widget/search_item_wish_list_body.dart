import 'package:flutter/material.dart';
// import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/heart_widget.dart';

class SearchItemWishListBody extends StatelessWidget {
  const SearchItemWishListBody(
      {super.key,
      required this.model,
      // required this.productModel,
      this.onTap});
  final WishListModel model;
  // final ProductModel productModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Material(
        elevation: 5,
        shadowColor: AppColors.white2,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(12)),
                      child: NetImage(
                        image: model.options.imageLink,
                        fit: BoxFit.cover,
                      )),
                ),
                FavouriteWidget(
                  from: 'search',
                  // inWishlist: productModel.inWishlist,
                  inWishlist: 1,
                  onTap: onTap,
                  height: 22,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    model.name,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColors.darkGrey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Dhs. ${model.price}",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 12, color: AppColors.darkGrey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
