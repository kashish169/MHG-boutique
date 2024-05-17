import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_fonts.dart';
import '../../controller/main_wrapper_controller.dart';
import 'package:badges/badges.dart' as badge;

List<Widget> navBarItems({
  required int index,
  required Function(int) onTap,
}) =>
    [
      _icon(
        icon: AppAssets.home,
        label: 'HOME',
        index: 0,
        color: index == 0 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(0),
      ),
      _icon(
        icon: AppAssets.brands,
        label: 'CATEGORIES',
        index: 1,
        color: index == 1 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(1),
      ),
      _icon(
        icon: AppAssets.wishlist,
        label: 'WISHLIST',
        index: 2,
        color: index == 2 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(2),
      ),
      _icon(
        icon: AppAssets.bag,
        label: 'BAG',
        enableBadge: true,
        index: 3,
        color: index == 3 ? AppColors.secondary : AppColors.white,
        onTap: () => onTap(3),
        iconSize: 22,
      ),
      _icon(
        icon: AppAssets.profile,
        label: 'PROFILE',
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
  bool? enableBadge,
  required Color color,
  double? iconSize,
}) {
  final controller = Get.find<MainWrapperController>();
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          enableBadge == true &&
                  Get.find<MyCartController>().cartItemsList.isNotEmpty
              ? badge.Badge(
                  badgeContent: Text(
                      "${Get.find<MyCartController>().cartItemsList.length}"),
                  child: Image.asset(
                    icon,
                    height: iconSize ?? 25,
                    width: iconSize ?? 25,
                    color: color,
                  ),
                )
              : Image.asset(
                  icon,
                  height: iconSize ?? 25,
                  width: iconSize ?? 25,
                  color: color,
                ),
          const SizedBox(height: 4),
          // FittedBox(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 4),
          //     child: Text(
          //       label,
          //       style: TextStyle(
          //         fontSize: 10,
          //         color: color,
          //         fontWeight: FontWeight.w400,
          //         fontFamily: AppFonts.Century_Gothic,
          //       ),
          //     ),
          //   ),
          // ),
          // AnimatedContainer(
          //   duration: const Duration(milliseconds: 250),
          //   height: 2,
          //   width: 100,
          //   color: controller.navBarIndex.value != index
          //       ? Colors.transparent
          //       : AppColors.secondary,
          // ),
        ],
      ),
    ),
  );
}
