import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';

class InvitationLinkCard extends StatelessWidget {
  const InvitationLinkCard({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.secondaryBlack,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10))),
              child: Center(
                child: Text(
                  "Your Friends Will See".tr,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontSize: 16, color: AppColors.white),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
              ),
              child: RichText(
                text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: 12),
                    children: [
                      TextSpan(
                          text:
                              "Hello,Your Friend ${controller.model.value?.number ?? ""} Want You To Collect\nRewards On "),
                      TextSpan(
                        text: 'MHGboutique ',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(fontSize: 14),
                      ),
                      const TextSpan(text: 'app.\n\n'),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            print(controller.model.value?.invitationLink);
                            controller.launchMyUrl(
                              controller.model.value?.invitationLink ?? "",
                            );
                          },
                        text: '${controller.model.value?.invitationLink}',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: AppColors.blue),
                      ),
                      const TextSpan(text: '  Happy Shopping!'),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
