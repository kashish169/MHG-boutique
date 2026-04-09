import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/core/languages/languages.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet(
      {super.key,
      required this.height,
      required this.selectText,
      required this.valueWidget});
  final double height;
  final String selectText;
  final Widget valueWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment:
            isAR() ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 110,
                height: 37,
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(15)),
                  color: AppColors.secondaryBlack,
                ),
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: AppColors.white,
                  size: 40,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.screenWidth(context) * 0.12),
            child: Text(
              selectText,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: AppColors.secondaryBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: valueWidget,
          )
        ],
      ),
    );
  }
}
