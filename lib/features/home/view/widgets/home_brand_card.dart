import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

class HomeBrandCard extends StatelessWidget {
  const HomeBrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        AppAssets.img1,
        height: 170,
        width: 185,
        fit: BoxFit.cover,
      ),
    );
  }
}
