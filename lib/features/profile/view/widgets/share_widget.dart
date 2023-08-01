import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/view/widgets/share_item.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';

class ShareCard extends StatelessWidget {
  const ShareCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  color: AppColors.secondaryBlack,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Share via GHboutique",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: 16, color: AppColors.white),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: AppColors.white,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'or Share via other media',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: AppColors.dGreen, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShareItem(
                          name: 'whatsApp',
                          icon: AppAssets.whatsapp2,
                          onTap: () {
                            controller.connectViaWhatsApp(
                              message: controller.model.value?.invitationLink,
                              phone: '',
                            );
                          },
                        ),
                        ShareItem(
                          name: 'Facebook',
                          icon: AppAssets.facebook2,
                          onTap: () async {
                             controller.shareLinkToFacebook(controller.model.value?.invitationLink ??
                                 '');
                          },
                        ),
                        ShareItem(
                          name: 'Gmail',
                          icon: AppAssets.gmail,
                          onTap: () {
                            controller.emailLaunch(
                                email: '',
                                message:
                                    controller.model.value?.invitationLink ??
                                        '');
                          },
                        ),
                        ShareItem(
                          name: 'Copy link',
                          icon: AppAssets.copy,
                          onTap: () async {
                            await Clipboard.setData(ClipboardData(
                                text: controller.model.value?.invitationLink ??
                                    ""));
                            AppToasts.successToast('Copied');
                          },
                        ),
                        ShareItem(
                          name: 'More',
                          icon: AppAssets.share,
                          onTap: () {
                            Share.share(
                                controller.model.value?.invitationLink ?? "");
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
