import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  final String? image;
  final String level;

  const ProfileHeader(
      {Key? key,
      required this.name,
      required this.email,
      this.image,
      required this.level})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    email,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: 11),
                  ),
                ],
              ),
            ),
            Visibility(
              visible:
                  controller.model.value!.currentTier != null ? true : false,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.white,
                child: Image.asset(
                  controller.getLevelIcon(),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Visibility(
              visible:
                  controller.model.value!.currentTier != null ? true : false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Level',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    level,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: 11),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
