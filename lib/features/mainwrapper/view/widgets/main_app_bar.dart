import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhg/features/my_wish_list/view/pages/my_wish_list.dart';
import 'package:mhg/features/notifications/view/pages/notifications_page.dart';
import '../../../../app/app.dart';
import '../../../../constants/app_assets.dart';
import '../../../auth/signin/view/pages/sign_in_page.dart';
import '../../../products_page/view/pages/product_page.dart';
import '../../controller/main_wrapper_controller.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.toNamed('/search');
            },
            icon: Image.asset(
              AppAssets.search,
              height: 28,
              color: color,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () async {
                  if (Get.currentRoute != MyWishList.roue) {
                    Get.toNamed(MyWishList.roue);
                  }
                },
                icon: Image.asset(
                  AppAssets.heart,
                  height: 28,
                  color: color,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AppAssets.menu,
                  height: 28,
                  color: color,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

AppBar mainAppBar({
  required BuildContext context,
  required GlobalKey<ScaffoldState> scaffoldKey,
}) {
  final controller = Get.find<MainWrapperController>();
  return AppBar(
    centerTitle: false,
    backgroundColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    automaticallyImplyLeading: false,
    title: Padding(
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
        onPressed: () {
          Get.toNamed('/search');
        },
        icon: Image.asset(
          AppAssets.search,
          height: 24,
          color: Colors.black,
        ),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Get.toNamed('/search');
        },
        icon: Image.asset(
          AppAssets.search,
          height: 20,
        ),
      ),
      IconButton(
        onPressed: () {
          if (App.token.isEmpty) {
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
          Get.toNamed(NotificationsPage.routeName);
        },
        icon: Image.asset(
          AppAssets.notification,
          height: 20,
        ),
      ),
    ],
  );
}
