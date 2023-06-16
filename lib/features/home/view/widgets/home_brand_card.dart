import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../models/brand_model.dart';

class HomeBrandCard extends StatelessWidget {
  final BrandModel model;
  const HomeBrandCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: AppColors.shadow(0.25),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: NetImage(
          image: model.imageLink,
          height: 132,
          width: 144,
        ),
      ),
    );
  }
}
