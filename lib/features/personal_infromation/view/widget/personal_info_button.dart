import 'package:flutter/material.dart';
import 'package:mhg/constants/app_dimensions.dart';

import '../../../../constants/app_colors.dart';

class PersonalInfoButton extends StatelessWidget {
  const PersonalInfoButton(
      {super.key, required this.text, this.onTap, required this.isDelete});
  final String text;
  final void Function()? onTap;
  final bool isDelete;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        // padding: EdgeInsets.only(top: 20, bottom: 20),
        margin: const EdgeInsets.only(bottom: 20),
        width: AppDimensions.screenWidth(context),
        height: 50,
        decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: AppColors.dividerColor)),
        ),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors.red, fontSize: 16),
        ),
      ),
    );
  }
}
