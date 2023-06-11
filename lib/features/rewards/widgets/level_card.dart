import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';

class LevelCard extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final bool isLocked;

  const LevelCard({
    super.key,
    required this.title,
    required this.description,
    required this.isLocked,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      color: AppColors.moghram,
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 60,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ),
          Visibility(
            visible: isLocked,
            child: Image.asset(
              AppAssets.locked,
              height: 32,
            ),
          ),
        ],
      ),
    );
  }
}
