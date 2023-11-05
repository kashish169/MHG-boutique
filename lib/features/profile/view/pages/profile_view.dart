import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/about_us/view/pages/about_us_page.dart';
import 'package:mhg/features/myorders/view/pages/my_orders_page.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/view/pages/invite_friends.dart';
import 'package:mhg/features/profile/view/pages/qr_view.dart';
import 'package:mhg/features/profile/view/pages/send_points.dart';
import 'package:mhg/features/profile/view/widgets/feed_back_dialog.dart';
import 'package:mhg/features/profile/view/widgets/reward_widget.dart';
import 'package:mhg/features/rewards/pages/rewards_page.dart';
import 'package:mhg/features/setting/view/pages/setting_view.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../core/helper/app_helper.dart';
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
    return App.token.isEmpty
        ? const SizedBox()
        : GetX<ProfileController>(builder: (controller) {
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
                      name: controller.model.value?.name ?? '',
                      email: controller.model.value?.email ?? '',
                      image: controller.model.value?.image,
                      level: controller.model.value?.currentTier ?? '-',
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
                      height: 32,
                      title: 'Invite your friends',
                      onTap: () {
                        Get.toNamed(InviteFriendPage.routeName);
                        //  controller.launchMyUrl(controller.model.value!.invitationLink);
                      },
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
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const FeedBackDialog();
                            });
                      },
                    ),
                    const DividerWidget(),
                    ProfileCard(
                      icon: AppAssets.store,
                      title: 'Find Our Stores',
                      onTap: () {
                        Get.toNamed('/map');
                      },
                    ),
                    // const DividerWidget(),
                    // const SizedBox(
                    //   height: 40,
                    // ),
                    const DividerWidget(),
                    ProfileCard(
                      icon: AppAssets.logout,
                      title: 'Log out',
                      onTap: () {
                        controller.logOut();
                      },
                    ),
                    const DividerWidget(),
                    const SizedBox(height: 15),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              // controller.launchMyUrl('mailto:care@hilal.cc');
                              AppHelper.launchURL('care@hilal.cc', 'mailto');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppAssets.message,
                                  color: AppColors.secondaryBlack,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('Email',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall)
                              ],
                            ),
                          )),
                          const SizedBox(
                              height: 25,
                              child: VerticalDivider(
                                thickness: 1,
                                color: Colors.grey,
                              )),
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              controller.launchMyUrl('tel://+9710506333911');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppAssets.phone,
                                  color: AppColors.secondaryBlack,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('Call us',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall)
                              ],
                            ),
                          )),
                          const SizedBox(
                              height: 25,
                              child: VerticalDivider(
                                thickness: 1,
                                color: Colors.grey,
                              )),
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              controller.connectViaWhatsApp(
                                  phone: '+9710557396666');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppAssets.whatsApp,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('WhatsApp',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall)
                              ],
                            ),
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
