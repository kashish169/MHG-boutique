import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/controller/profileController.dart';
import 'package:mhg/features/profile/view/pages/qr_view.dart';
import 'package:mhg/features/profile/view/widgets/head.dart';
import 'package:mhg/features/profile/view/widgets/profile_app_bar.dart';
import 'package:mhg/features/profile/view/widgets/reward_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

class ProfileView extends StatefulWidget {
  static String routeName = '/profile';

  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final controller = Get.find<ProfileController>();

  @override
  void initState() {
    super.initState();
  }

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
      return SingleChildScrollView(
        child: Column(
          children: [
            Head(
                name: controller.model.name,
                email: controller.model.email,
                image: AppAssets.profileLogo,
                level: 'Mojab'),
            const RewardBox(),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context,
                icon: AppAssets.person1, title: 'Personal information'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context, icon: AppAssets.order, title: 'My Orders'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context, icon: AppAssets.setting, title: 'Settings'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context, icon: AppAssets.reward, title: 'Rewards'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context,
                icon: AppAssets.scan, title: 'Scan QR to collect Rewards',
                onTap: (){
                  Get.to(()=>const QRPage());
                }),

            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context,
                icon: AppAssets.payment, title: 'Payment information'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context,
                icon: AppAssets.invite, title: 'invite your friends'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context, icon: AppAssets.about, title: 'About MHGboutique'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context, icon: AppAssets.feedback, title: 'Send a feedback'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context, icon: AppAssets.store, title: 'Find Our Stores'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            const SizedBox(
              height: 40,
            ),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            item(context, icon: AppAssets.person, title: 'Log out'),
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            SizedBox(
              height: 15,
            ),
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
                      height: 20,
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
            Divider(
              color: AppColors.grey,
              thickness: .5,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Follow us on',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.facebook,
                  height: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  AppAssets.insta,
                  height: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  AppAssets.twitter,
                  height: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    });
  }

  item(BuildContext context, {required String title, required String icon,void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: SizedBox(
          height: 40,
          child: ListTile(
            leading: Image.asset(
              icon,
              height: 25,
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Color(0xFFB4B4B4),
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
