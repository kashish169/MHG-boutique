import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

class FavouriteWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  const FavouriteWidget({Key? key, this.height, this.onTap, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(
            AppAssets.favourtie,
            height: height ?? 24,
            width: width,
          ),
        ));
  }
}
