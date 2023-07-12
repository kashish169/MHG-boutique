import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../constants/app_colors.dart';

AppBar customAppBar(
  BuildContext context, {
  required String title,
}) {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle.light,
    leading: IconButton(
      onPressed: () {
       title != 'Confirmation'? Get.back() : Get.offNamedUntil('/main_wrapper', (route) => false);
      },
      icon:  Icon(
        Icons.arrow_back_ios,
        color: AppColors.white,
      ) ,
    ),
    backgroundColor: AppColors.primary,
    title: Text(title,
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(color: AppColors.white)),
  );
}
