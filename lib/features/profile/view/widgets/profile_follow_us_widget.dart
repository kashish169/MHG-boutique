import 'package:flutter/material.dart';
import '../../../../constants/app_assets.dart';
import '../../../../widgets/divider_widget.dart';

class ProfileFollowUsWidget extends StatelessWidget {
  const ProfileFollowUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerWidget(),
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
    );
  }
}
