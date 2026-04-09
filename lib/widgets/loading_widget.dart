import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.isWhite});
  final bool? isWhite;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
          child: Image.asset(
        AppAssets.loading,
        width: 25,
        height: 25,
      )),
    );
  }
}
