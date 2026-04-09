import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_colors.dart';

class SearchTopSellers extends StatelessWidget {
  const SearchTopSellers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Top Sellers".tr,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: AppColors.primary, fontSize: 18)),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "View All".tr,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColors.primary),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColors.secondaryBlack,
                    size: 20,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
