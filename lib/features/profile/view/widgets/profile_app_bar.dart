import 'package:flutter/material.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';

profileAppBar() {
  return AppBar(
    backgroundColor: AppColors.primary,
    actions: [
      IconButton(onPressed: () {}, icon: Image.asset(AppAssets.search,height: 25,),
      ),
      IconButton(onPressed: () {}, icon: Image.asset(AppAssets.notification,height: 25,)),
    ],
  );
}
