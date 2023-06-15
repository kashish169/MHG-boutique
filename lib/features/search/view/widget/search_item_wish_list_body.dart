import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/heart_widget.dart';

class SearchItemWishListBody extends StatelessWidget {
  const SearchItemWishListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Material(
        elevation: 5,
        shadowColor: AppColors.white2,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 120,
                    width: 120,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(AppAssets.brand1),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.lightLabel2),
                      child: const FavouriteWidget(
                        isWhite: true,
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Neor",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: AppColors.darkGrey),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Dhs. 396.00",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 12, color: AppColors.darkGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
