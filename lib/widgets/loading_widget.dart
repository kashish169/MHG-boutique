import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.isWhite});
  final bool? isWhite;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
          child: CircularProgressIndicator(
        color: isWhite == null ? AppColors.label : AppColors.white,
      )),
    );
  }
}
