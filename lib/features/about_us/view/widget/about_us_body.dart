import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontSize: 22, color: AppColors.dBlack2),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          subTitle,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: 14, color: AppColors.dBlack2),
        )
      ],
    );
  }
}
