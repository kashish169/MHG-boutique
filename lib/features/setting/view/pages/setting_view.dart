import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/features/profile/view/widgets/profile_card.dart';
import 'package:mhg/features/setting/view/pages/privacy_policy.dart';
import 'package:mhg/features/setting/view/pages/terms_and_conditions_page.dart';
import 'package:mhg/features/setting/view/widgets/ads.dart';
import 'package:mhg/features/setting/view/widgets/allow_notification.dart';
import 'package:mhg/features/setting/view/widgets/country_widget.dart';
import 'package:mhg/features/setting/view/widgets/language_widget.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../../../../widgets/divider_widget.dart';

class SettingPage extends StatelessWidget {
  static String routeName = '/setting';
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Settings"),
      body: Column(
        children: [
          // const LanguageWidget(),
          // const DividerWidget(),
          // const CountryWidget(),
          // const DividerWidget(),
          const SizedBox(height: 30),
          const DividerWidget(),
          const AllowNotification(),
          const DividerWidget(),
          const SizedBox(
            height: 30,
          ),
          const DividerWidget(),
          const AllowAds(),
          const DividerWidget(),
          const SizedBox(
            height: 50,
          ),
          const DividerWidget(),
          ProfileCard(
              icon: AppAssets.info,
              title: 'Privacy Policy',
              onTap: () {
                Get.toNamed(PrivacyPolicyPage.routeName);
              }),
          const DividerWidget(),
          ProfileCard(
              icon: AppAssets.terms,
              title: 'Terms & Conditions',
              onTap: () {
                Get.toNamed(TermsAndConidtionsPage.routeName);
              }),
          const DividerWidget(),
        ],
      ),
    );
  }
}
