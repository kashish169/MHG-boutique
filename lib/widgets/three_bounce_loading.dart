import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mhg/constants/app_colors.dart';

class LoadingThreeBounce extends StatelessWidget {
  const LoadingThreeBounce({super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      color: AppColors.white,
      size: 12,
    );
  }
}
