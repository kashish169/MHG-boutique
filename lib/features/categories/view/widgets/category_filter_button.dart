import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_colors.dart';

class CategoryFilterButton extends StatelessWidget {
  const CategoryFilterButton(
      {super.key,
      required this.text,
      required this.isChecked,
      required this.onPressed});
  final String text;
  final bool isChecked;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 / 2.3,
        color: isChecked ? AppColors.green : AppColors.dGreen,
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Text(
          text.tr,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.white,
                fontSize: 14,
              ),
        ),
      ),
    );
  }
}
