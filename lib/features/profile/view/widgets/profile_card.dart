import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

class ProfileCard extends StatelessWidget {
  final String icon;
  final String title;
  final Function()? onTap;
  const ProfileCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: AppColors.white,
        height: 50,
        child: Center(
          child: ListTile(
            minLeadingWidth: 30,
            leading: Image.asset(
              icon,
              height: 25,
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Color(0xFFB4B4B4),
              size: 20,
            ),
          ),
        ),
      ),
    )
  }
}
