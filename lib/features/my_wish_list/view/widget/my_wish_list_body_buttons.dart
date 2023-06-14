import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/primary_button.dart';

class BodyButtons extends StatelessWidget {
  const BodyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: PrimaryButton(
              title: "Share",
              onTap: () {},
              fontSize: 12,
              color: AppColors.white,
              height: 35,
              reverseColor: true,
              isSelcted: true,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5,
            ),
            child: PrimaryButton(
              title: "Add to Bag",
              onTap: () {},
              fontSize: 12,
              color: AppColors.primary,
              height: 35,
            ),
          ),
        ),
      ],
    );
  }
}
