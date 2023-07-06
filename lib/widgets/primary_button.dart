import 'package:flutter/material.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';
import '../constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final bool isLoading;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final double? radius;
  final bool? fromSplash;
  final bool? reverseColor;
  final double? fontSize;
  final Color? color;
  final Color? fontColor;
  final bool? isSelcted;
  final double? elevation;

  const PrimaryButton({
    super.key,
    required this.title,
    this.isLoading = false,
    required this.onTap,
    this.height,
    this.width,
    this.radius,
    this.fromSplash,
    this.reverseColor,
    this.fontSize,
    this.color,
    this.isSelcted,
    this.elevation,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation,
      height: height,
      minWidth: width,
      color: color ?? AppColors.secondary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: isSelcted == null
                ? AppColors.white
                : isSelcted == false
                ? AppColors.white
                : AppColors.label),
        borderRadius: BorderRadius.circular(radius ?? 13),
      ),
      onPressed: onTap,
      child: isLoading
          ? const Center(
        child: LoadingThreeBounce(),
      )
          : Text(
        title,
        style: Theme
            .of(context)
            .textTheme
            .displaySmall
            ?.copyWith(
          fontSize: fontSize,
          color: fontColor ?? (reverseColor == true
              ? AppColors.secondary
              : AppColors.white),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
