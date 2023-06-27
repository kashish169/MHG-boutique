import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/core/storage/storage_pref.dart';
import 'package:mhg/features/about_us/view/pages/about_us_page.dart';
import 'package:mhg/features/myorders/view/pages/my_orders_page.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/view/pages/qr_view.dart';
import 'package:mhg/features/profile/view/pages/send_points.dart';
import 'package:mhg/features/profile/view/widgets/reward_widget.dart';
import 'package:mhg/features/rewards/pages/rewards_page.dart';
import 'package:mhg/features/setting/view/pages/setting_view.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../widgets/divider_widget.dart';
import '../../../checkout/views/pages/payment_methods_page.dart';
import '../widgets/profile_card.dart';
import '../widgets/profile_follow_us_widget.dart';
import '../widgets/profile_header.dart';

class ProfileView extends StatelessWidget {
  static String routeName = '/profile';
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ProfileController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (controller.isError.isTrue) {
        return RetryButton(
          onTap: () {
            controller.getProfileInfo();
          },
        );
      }
      return RefreshIndicator(
        onRefresh: () async => controller.getProfileInfo(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeader(
                name: controller.model.value!.name,
                email: controller.model.value!.email,
                image: controller.model.value!.image,
                level: controller.model.value!.currentTier ?? '-',
              ),
              const ProfileRewardBox(),
              const DividerWidget(),
              ProfileCard(
                onTap: () async {
                  await Get.toNamed('/personal_information', arguments: {
                    "profile": controller.model.value,
                  });
                  controller.getProfileInfo();
                },
                icon: AppAssets.person1,
                title: 'Personal information',
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.order,
                title: 'My Orders',
                onTap: () async {
                  await Get.toNamed(MyOrdersPage.routeName);
                  controller.getProfileInfo();
                },
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.setting,
                title: 'Settings',
                onTap: () async {
                  await Get.toNamed(SettingPage.routeName);
                },
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.reward,
                title: 'Rewards',
                onTap: () async {
                  await Get.toNamed(RewardsPage.routeName);
                  controller.getProfileInfo();
                },
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.sendPoints,
                title: 'Send Points',
                onTap: () async {
                  await Get.dialog(const SendPointsPage());
                  controller.phoneNumberController.clear();
                  controller.pointsController.clear();
                },
              ),
              const DividerWidget(),
              ProfileCard(
                  icon: AppAssets.scan,
                  title: 'Scan QR to collect Rewards',
                  onTap: () async {
                    await Get.to(
                      () => const QRPage(),
                    );
                    controller.getProfileInfo();
                  }),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.payment,
                title: 'Payment information',
                onTap: () {
                  Get.to(
                    () => const PaymentMethodsPage(
                      isProfile: true,
                    ),
                  );
                },
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.invite,
                title: 'Invite your friends',
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.about,
                title: 'About MHGboutique',
                onTap: () {
                  Get.toNamed(AboutUsPage.routeName);
                },
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.feedback,
                title: 'Send a feedback',
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.store,
                title: 'Find Our Stores',
                onTap: () {
                  Get.toNamed('/map');
                },
              ),
              const DividerWidget(),
              const SizedBox(
                height: 40,
              ),
              const DividerWidget(),
              ProfileCard(
                icon: AppAssets.logout,
                title: 'Log out',
                onTap: () async {
                  bool notifayMe = App.notifyMe!;
                  App.token = '';
                  await StoragePref.clear();
                  await StoragePref.setbool(
                    key: 'notifyme',
                    value: notifayMe,
                  );
                  Get.offAllNamed(OnBoardView.routeName);
                },
              ),
              const DividerWidget(),
              const SizedBox(height: 15),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.message,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Email',
                            style: Theme.of(context).textTheme.displaySmall)
                      ],
                    )),
                    const SizedBox(
                        height: 25,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.grey,
                        )),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.phone,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Call us',
                            style: Theme.of(context).textTheme.displaySmall)
                      ],
                    )),
                  ],
                ),
              ),
              const ProfileFollowUsWidget(),
            ],
          ),
        ),
      );
    });
  }
}
