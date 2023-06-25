import 'package:flutter/material.dart';
import 'package:mhg/features/about_us/model/about_us_model.dart';
import 'package:mhg/widgets/net_image.dart';

import '../../../../constants/app_colors.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key, required this.aboutUsModel});
  final AboutUsModel aboutUsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          aboutUsModel.englishtitle1,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontSize: 22, color: AppColors.dBlack2),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          aboutUsModel.englishdescriotion1,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: 14, color: AppColors.dBlack2),
        ),
        SizedBox(
          height: aboutUsModel.englishsubTitle != null ? 20 : 0,
        ),
        Text(
          aboutUsModel.englishsubTitle ?? '',
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(fontSize: 22, color: AppColors.dBlack2),
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: NetImage(image: aboutUsModel.imageLink))
      ],
    );
  }
}
