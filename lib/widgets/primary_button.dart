import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final bool? isLoading;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final double? radius;
  final bool? fromSplash;
  final bool? reverseColor;
  final double? fontSize;
  final Color? color;
  final bool? isSelcted;

  const PrimaryButton({
    super.key,
    required this.title,
    this.isLoading,
    required this.onTap,
    this.height,
    this.width,
    this.radius,
    this.fromSplash,
    this.reverseColor,
    this.fontSize,
    this.color,
    this.isSelcted,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: width,
      color: color ?? AppColors.primary,
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
      child: isLoading != null && isLoading == true
          ? SizedBox(
              width: 20,
              height: 20,
              child: Center(
                child: CircularProgressIndicator(color: AppColors.white),
              ))
          : Text(
              title,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: fontSize,
                    color: reverseColor == true
                        ? AppColors.primary
                        : AppColors.white,
                  ),
              textAlign: TextAlign.center,
            ),
    );
  }
}
