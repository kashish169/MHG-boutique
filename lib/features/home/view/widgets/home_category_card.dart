import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

class HomeCategoryCard extends StatelessWidget {
  const HomeCategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(18),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadiusDirectional.circular(8),
        boxShadow: AppColors.shadow(0.3),
      ),
      child: Text(
        "Top Sellers",
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontSize: 16,
            ),
      ),
    );
  }
}
