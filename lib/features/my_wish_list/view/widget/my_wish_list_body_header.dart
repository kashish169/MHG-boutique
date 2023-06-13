import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/delete_icon_button.dart';

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
        DeleteIconButton(
          onTap: () {},
        ),
      ],
    );
  }
}
