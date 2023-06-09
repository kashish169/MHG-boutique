import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/app_assets.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: SizedBox(
        height: 20,
        width: 20,
        child: Image.asset(
          AppAssets.arrowBack,
        ),
      ),
    );
  }
}
