import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';
import '../constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final bool isLoading;
  final void Function()? onTap;
  final double? height;
  final double? width;
  final double? radius;
  final bool? fromSplash;
  final bool? reverseColor;
  final double? fontSize;
  final Color? color;
  final Color? fontColor;
  final bool? isSelected;
  final double? elevation;
  final bool isApplePay;

  const PrimaryButton({
    super.key,
    required this.title,
    this.isLoading = false,
    this.isApplePay = false,
    required this.onTap,
    this.height,
    this.width,
    this.radius,
    this.fromSplash,
    this.reverseColor,
    this.fontSize,
    this.color,
    this.isSelected,
    this.elevation,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation,
      height: height,
      minWidth: width,
      disabledColor: AppColors.grey,
      color: color ?? AppColors.secondary,
      shape: RoundedRectangleBorder(
        side: (isSelected == null || isSelected == false)
            ? BorderSide.none
            : BorderSide(color: AppColors.label),
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
      onPressed: onTap,
      child: (isLoading)
          ? const Center(
              child: LoadingThreeBounce(),
            )
          : (isLoading == false && isApplePay == true)
              ? SizedBox(
                  width: width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pay with ',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height: 40, child: Image.asset(AppAssets.applepay))
                    ],
                  ),
                )
              : Text(
                  title,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: fontSize,
                        color: fontColor ??
                            (reverseColor == true
                                ? AppColors.secondary
                                : AppColors.white),
                      ),
                  textAlign: TextAlign.center,
                ),
    );
  }
}
