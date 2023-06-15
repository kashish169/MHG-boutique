import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';

class CategoryBrandCard extends StatelessWidget {
  const CategoryBrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: AppColors.shadow(0.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),

        child: Image.asset(
          AppAssets.img1,
          height: 132,
          width: 145,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
