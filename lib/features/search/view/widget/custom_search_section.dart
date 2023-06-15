import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class CustomSearchSection extends StatelessWidget {
  const CustomSearchSection({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
      ],
    );
  }
}
