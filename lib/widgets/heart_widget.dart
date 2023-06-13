import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

class HeartWidget extends StatelessWidget {
  final double? height;
  const HeartWidget({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,

        onPressed: () {},
        icon: Image.asset(
          AppAssets.heart,
          height:height?? 45,
        ));
  }
}
