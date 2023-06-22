import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mhg/constants/app_colors.dart';

class LoadingThreeBounce extends StatelessWidget {
  final Color? color;
  const LoadingThreeBounce({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      color: color ?? AppColors.white,
      size: 12,
    );
  }
}
