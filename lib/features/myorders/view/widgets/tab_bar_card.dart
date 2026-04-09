import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

class TabBarCard extends StatelessWidget {
  final String title;
  final Color color;
  const TabBarCard({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 64,
      duration: const Duration(milliseconds: 250),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: AppColors.lightLabel,
          width: 0.5,
        ),
      ),
      child: Center(
        child: FittedBox(
          child: Text(
            title,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: color == AppColors.primary
                      ? AppColors.white
                      : AppColors.primary,
                ),
          ),
        ),
      ),
    );
  }
}
