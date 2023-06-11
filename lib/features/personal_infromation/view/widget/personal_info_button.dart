import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class PersonalInfoButton extends StatelessWidget {
  const PersonalInfoButton(
      {super.key, required this.text, this.onTap, required this.isDelete});
  final String text;
  final void Function()? onTap;
  final bool isDelete;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColors.red, fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(),
        SizedBox(
          height: isDelete ? 20 : 0,
        ),
      ],
    );
  }
}
