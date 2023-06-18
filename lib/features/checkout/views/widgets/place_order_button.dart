// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/views/pages/checkout.dart';
import 'package:mhg/widgets/primary_button.dart';

class PlaceOrderButton extends StatelessWidget {
  final String title;
  final double width;
  final bool hasIcon;
  PlaceOrderButton({
    super.key,
    required this.title,
    required this.width,
    required this.hasIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          PrimaryButton(
            height: 44,
            width: width,
            title: title,
            onTap: () {},
          ),
         hasIcon ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.white,
              size: 18,
            ),
          ) :SizedBox.shrink(),
        ],
      ),
    );
  }
}
