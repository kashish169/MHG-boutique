import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/primary_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: PrimaryButton(
                title: 'login',
                height: 40,
                radius: 10,
                color: AppColors.primary.withOpacity(.1),
                onTap: () {},
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: PrimaryButton(
                title: 'Not Now',
                height: 40,
                radius: 10,
                color: AppColors.primary.withOpacity(.1),
                onTap: () {},
              )),
        ],
      ),
    );
  }
}