import 'package:flutter/material.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/widgets/net_image.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_dimensions.dart';
import '../../../../widgets/heart_widget.dart';

class SearchTopSellsBody extends StatelessWidget {
  const SearchTopSellsBody({super.key, required this.model, this.onTap});
  final ProductModel model;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Material(
        elevation: 5,
        shadowColor: AppColors.white2,
        borderRadius: BorderRadius.circular(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  // margin: const EdgeInsets.only(10),
                  height: AppDimensions.productHeight(context),
                  width: AppDimensions.screenWidth(context) * 0.4,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(22)),
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(22)),
                    child: NetImage(
                      image: model.primaryImageLink,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: FavouriteWidget(
                    from: 'search',
                    inWishlist: model.inWishlist,
                    onTap: onTap,
                    height: 22,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    model.enProductName,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColors.darkGrey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Dhs. ${model.price} ",
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
