import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_fonts.dart';
import '../../controller/main_wrapper_controller.dart';

List<Widget> navBarItems({
  required int index,
  required Function(int) onTap,
}) =>
    [
      _icon(
        icon: AppAssets.home,
        label: 'Home',
        index: 0,
        color: index == 0 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(0),
      ),
      _icon(
        icon: AppAssets.brands,
        label: 'Categories',
        index: 1,
        color: index == 1 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(1),
      ),
      _icon(
        icon: AppAssets.wishlist,
        label: 'Wishlist',
        index: 2,
        color: index == 2 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(2),
      ),
      _icon(
        icon: AppAssets.bag,
        label: 'Bag',
        index: 3,
        color: index == 3 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(3),
        iconSize: 22,
      ),
      _icon(
        icon: AppAssets.profile,
        label: 'Profile',
        index: 4,
        color: index == 4 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(4),
        iconSize: 20,
      ),
    ];

Widget _icon({
  required String icon,
  required String label,
  required VoidCallback onTap,
  required int index,
  required Color color,
  double? iconSize,
}) {
  final controller = Get.find<MainWrapperController>();
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              height: iconSize ?? 25,
              width: iconSize ?? 25,
              color: color,
            ),
            const SizedBox(height: 4),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: color,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.INTER,
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 2,
              width: 100,
              color: controller.navBarIndex.value != index
                  ? Colors.transparent
                  : AppColors.secondary,
            ),
          ],
        ),
      ),
    ),
  );
}
