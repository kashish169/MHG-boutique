import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

class ShareItem extends StatelessWidget {
  final String name;
  final String icon;
  final void Function()? onTap;

  const ShareItem(
      {Key? key, required this.name, required this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            icon,
            height: 28,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(fontSize: 11, color: AppColors.dGreen),
          )
        ],
      ),
    );
  }
}
