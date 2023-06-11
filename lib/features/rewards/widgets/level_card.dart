import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';

class LevelCard extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final bool isLocked;
  final Color color;

  const LevelCard({
    super.key,
    required this.title,
    required this.description,
    required this.isLocked,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      color: color,
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
                        color: color == AppColors.molah
                            ? AppColors.white
                            : AppColors.label,
                      ),
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: color == AppColors.molah
                            ? AppColors.white
                            : AppColors.label,
                      ),
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
