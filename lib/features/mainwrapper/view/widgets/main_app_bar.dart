import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhg/features/notifications/view/pages/notifications_page.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import '../../../../app/app.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../auth/signin/view/pages/sign_in_page.dart';
import '../../controller/main_wrapper_controller.dart';

AppBar mainAppBar({
  required BuildContext context,
  required GlobalKey<ScaffoldState> scaffoldKey,
}) {
  final controller = Get.find<MainWrapperController>();
  return AppBar(
    centerTitle: false,
    backgroundColor: AppColors.appBarColor,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    automaticallyImplyLeading: false,
    title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: App.token.isEmpty
            ? Text(
                "Ya Hala",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: AppColors.white),
              )
            : GetX<ProfileController>(builder: (controller) {
                if (controller.isLoading.isTrue) {
                  return Text(
                    "Ya Hala",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: AppColors.white),
                  );
                } else if (controller.isError.isTrue) {
                  // return RetryButton(
                  //   onTap: () {
                  //     controller.getProfileInfo();
                  //   },
                  // );
                  Text(
                    "Ya Hala, ....",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: AppColors.white),
                  );
                }
                return Text(
                  "Ya Hala, ${controller.model.value!.name}",
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: AppColors.white),
                );
              })),
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
