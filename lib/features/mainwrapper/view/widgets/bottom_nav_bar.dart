import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_dimensions.dart';
import '../../controller/main_wrapper_controller.dart';
import 'bottom_nav_bar_items.dart';

class BottomNavBarWidget extends StatefulWidget {
  final TabController tabController;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const BottomNavBarWidget(
      {Key? key, required this.tabController, required this.scaffoldKey})
      : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainWrapperController>();

    return Container(
      padding: EdgeInsets.only(
        bottom: AppDimensions.viewBottomPadding(context),
      ),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12),
        ),
        boxShadow: AppColors.shadow(0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: navBarItems(
          index: controller.navBarIndex.value,
          onTap: (index) {
            selectedIndex = index;
            controller.navBarIndex.value = selectedIndex;
            widget.tabController.animateTo(index);
            if (widget.scaffoldKey.currentState!.isDrawerOpen == true) {
              Navigator.pop(context);
            }
            // if (selectedIndex == 0) {
            //   Get.find<HomeController>().getHome();
            // }
            if (selectedIndex == 4) {
              Get.find<ProfileController>().getProfileInfo();
            }
            if (selectedIndex == 3) {
              Get.find<MyCartController>().getCart();
            }
            if (mounted) setState(() {});
          },
        ),
      ),
    );
  }
}
