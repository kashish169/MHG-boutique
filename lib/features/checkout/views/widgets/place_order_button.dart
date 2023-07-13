// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

import 'package:mhg/widgets/primary_button.dart';

class PlaceOrderButton extends StatelessWidget {
  final String title;
  final double? width;
  final bool hasIcon;
  final VoidCallback onPress;
  final bool isLoading;
  final Color? color;
  PlaceOrderButton({
    super.key,
    required this.title,
    this.width,
    required this.hasIcon,
    required this.onPress,
    this.isLoading = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          PrimaryButton(
            color: color ?? AppColors.secondary,
            height: 40,
            width: width,
            title: title,
            isLoading: isLoading,
            onTap: onPress,
          ),
          hasIcon
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.white,
                    size: 18,
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
