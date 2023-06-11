import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/storage/storage_pref.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/view/pages/qr_view.dart';
import 'package:mhg/features/profile/view/widgets/profile_card.dart';
import 'package:mhg/features/profile/view/widgets/reward_widget.dart';
import 'package:mhg/features/rewards/pages/rewards_page.dart';
import 'package:mhg/features/setting/view/widgets/ads.dart';
import 'package:mhg/features/setting/view/widgets/allow_notification.dart';
import 'package:mhg/features/setting/view/widgets/country_widget.dart';
import 'package:mhg/features/setting/view/widgets/language_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../widgets/divider_widget.dart';

class SettingPage extends StatelessWidget {
  static String routeName = '/setting';

  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF8F8F8),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: Text(
          'Settings',
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: AppColors.white),
        ),
        leading: IconButton(

          icon:  Icon(

            Icons.arrow_back_ios,
            color: AppColors.white,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body:  Column(
        children: [
          const LanguageWidget(),
          const DividerWidget(),
          const CountryWidget(),
          const DividerWidget(),
          const SizedBox(height: 30,),
          const DividerWidget(),
          const AllowNotification(),
          const DividerWidget(),
          const SizedBox(height: 30,),
          const DividerWidget(),
          const AllowAds(),
          const DividerWidget(),
          const SizedBox(height: 50,),
          const DividerWidget(),
          ProfileCard(icon: AppAssets.info, title: 'Privacy Policy'),
          const DividerWidget(),
          ProfileCard(icon: AppAssets.terms, title: 'Terms & Conditions'),
          const DividerWidget(),
        ],
      ),
    );
  }
}
