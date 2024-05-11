import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/features/auth/signin/view/pages/sign_in_page.dart';
import 'package:mhg/features/categories/controller/categories_controller.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_dimensions.dart';
import '../../../checkout/controllers/checkout_controller.dart';
import '../../controller/main_wrapper_controller.dart';
import 'bottom_nav_bar_items.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

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
            // top: Radius.circular(12),
            ),
        boxShadow: AppColors.shadow(0.5),
      ),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: navBarItems(
              index: controller.navBarIndex.value,
              onTap: (index) async {
                if (App.token.isEmpty) {
                  if (index == 4) {
                    Get.toNamed(
                      SignInPage.routeName,
                      arguments: {
                        'country': App.countryName,
                        'is_guest': true,
                        'country_code': controller.globalGuestCountryCode,
                        'flag': controller.globalGuestCountryFlag,
                        'id': controller.globalGuestCountryId,
                      },
                    );
                    return;
                  }
                }
                Get.until((route) => route.isFirst);
                selectedIndex = index;
                controller.navBarIndex.value = selectedIndex;
                if (selectedIndex == 0) {
                  Get.find<HomeController>().getHome();
                }
                if (selectedIndex == 1) {
                  Get.find<CategoriesController>().getCategories();
                  Get.find<CategoriesController>().getBrands();
                }
                if (selectedIndex == 2) {
                  Get.find<WishListController>().getWishList();
                }
                if (selectedIndex == 4) {
                  Get.find<ProfileController>().getProfileInfo();
                }
                if (selectedIndex == 3) {
                  await Get.find<MyCartController>().getCart();
                  Get.find<CheckoutController>().orderPrice();
                }
                if (mounted) setState(() {});
              },
            ),
          )),
    );
  }
}
