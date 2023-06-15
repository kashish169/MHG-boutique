import 'package:flutter/material.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';

class SearchBrandBody extends StatelessWidget {
  const SearchBrandBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Material(
        elevation: 5,
        shadowColor: AppColors.white2,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 50,
          width: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Image.asset(AppAssets.brand1),
        ),
      ),
    );
  }
}
