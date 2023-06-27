import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhg/features/notifications/view/pages/notifications_page.dart';
import '../../../../app/app.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../auth/signin/view/pages/sign_in_page.dart';
import '../../controller/main_wrapper_controller.dart';

AppBar mainAppBar({
  required BuildContext context,
  required GlobalKey<ScaffoldState> scaffoldKey,
  required int currentIndex,
}) {
  final controller = Get.find<MainWrapperController>();
  return AppBar(
    centerTitle: false,
    backgroundColor: AppColors.primary,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    automaticallyImplyLeading: false,
    title: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(
        AppAssets.logoWhite,
        height: 38,
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
