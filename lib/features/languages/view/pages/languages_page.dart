import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/languages/languages.dart';

import '../../../../core/helper/app_helper.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';

class LanguagePage extends StatelessWidget {
  static String routeName = '/language_page';
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Languages'.tr),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Change language'.tr,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          const Divider(color: Colors.black, thickness: 0.5),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                LanguageSwitch(
                  text: 'English(US)',
                  isSwitch: !isAR(),
                  languageCode: 'en',
                  countryCode: 'US',
                ),
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                LanguageSwitch(
                  text: 'العربية',
                  isSwitch: isAR(),
                  languageCode: 'ar',
                  countryCode: 'AE',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch(
      {super.key,
      required this.isSwitch,
      required this.text,
      required this.languageCode,
      this.countryCode,
      this.colorSwitchOn = const Color(0XFF21559e),
      this.colorSiwtchOff = Colors.white});
  final String text;
  final bool isSwitch;
  final String languageCode;
  final String? countryCode;
  final Color colorSwitchOn;
  final Color colorSiwtchOff;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        TextButton(
          onPressed: () async {
            await AppHelper.updateLanguage(Locale(languageCode, countryCode));
          },
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: CircleAvatar(
            radius: 11,
            backgroundColor: colorSwitchOn,
            child: CircleAvatar(
              radius: 9,
              backgroundColor: colorSiwtchOff,
              child: CircleAvatar(
                radius: 6,
                backgroundColor: isSwitch ? colorSwitchOn : colorSiwtchOff,
              ),
            ),
          ),
        )
      ],
    );
  }
}
