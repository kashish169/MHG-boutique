import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/widgets/delete_icon_button.dart';
import 'package:mhg/widgets/primary_button.dart';

import '../../../../constants/app_colors.dart';
import '../../../../core/helper/app_helper.dart';

showCallBottomSheet({
  required String firstNumber,
  required String secondNumber,
}) async {
  Get.bottomSheet(
    Container(
        padding: const EdgeInsets.all(20),
        height: 140,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(25))),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Text(
                  "Choose number to call",
                  style: Get.textTheme.displayMedium!.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: PrimaryButton(
                          width: 110,
                          height: 40,
                          title: firstNumber,
                          onTap: () {
                            Get.back();
                            AppHelper.launchURL(firstNumber, 'tel');
                          }),
                    ),
                    Flexible(
                      flex: 1,
                      child: PrimaryButton(
                          width: 110,
                          height: 40,
                          title: secondNumber,
                          onTap: () {
                            Get.back();
                            AppHelper.launchURL(secondNumber, 'tel');
                          }),
                    ),
                  ],
                )
              ],
            ),
            Positioned(
                right: -5,
                top: -20,
                child: DeleteIconButton(
                    height: 21,
                    onTap: () {
                      Get.back();
                    }))
          ],
        )),
  );
}
