import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/primary_button.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: PrimaryButton(
              title: "Yes, Notify me",
              width: 100,
              color: AppColors.secondary,
              height: 50,
              onTap: () {},
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: PrimaryButton(
            title: "Not Now",
            width: 100,
            color: Colors.transparent,
            height: 50,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
