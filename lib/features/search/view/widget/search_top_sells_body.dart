import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/heart_widget.dart';

class SearchTopSellsBody extends StatelessWidget {
  const SearchTopSellsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Material(
        elevation: 5,
        shadowColor: AppColors.white2,
        borderRadius: BorderRadius.circular(22),
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
                    height: 170,
                    width: 130,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(22)),
                    child: Image.asset(
                      AppAssets.brand1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: FavouriteWidget(
                      onTap: () {},
                      height: 22,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "REBEL",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: AppColors.darkGrey),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Dhs. 590.00 ",
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
