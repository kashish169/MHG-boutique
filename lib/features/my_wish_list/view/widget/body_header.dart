import 'package:flutter/material.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';

class TopBodyHeader extends StatelessWidget {
  const TopBodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Syond (60ml)",
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: 16, color: AppColors.darkGrey),
        ),
        GestureDetector(
          onTap: () {},
          child: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(
                AppAssets.x,
                fit: BoxFit.cover,
              )),
        )
      ],
    );
  }
}
