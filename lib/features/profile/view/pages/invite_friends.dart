import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/view/widgets/invitation_link_card.dart';
import 'package:mhg/features/profile/view/widgets/share_widget.dart';
import 'package:mhg/widgets/custom_app_bar.dart';

class InviteFriendPage extends StatelessWidget {
  static String routeName = '/invite_friend';

  const InviteFriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(context, title: "Invite your friends".tr),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: AppColors.yellow,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 15),
                          children: [
                            TextSpan(text: 'invite your \n'.tr),
                            TextSpan(
                              text: 'Friends'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(fontSize: 18),
                            ),
                            TextSpan(text: ' & Get Points'.tr),
                          ]),
                    ),
                  ),
                ),
                ClipRRect(
                  child: Image.asset(
                    AppAssets.girls,
                    fit: BoxFit.fill,
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
          const InvitationLinkCard(),
          const ShareCard()
        ],
      ),
    );
  }
}
