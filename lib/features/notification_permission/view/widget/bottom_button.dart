import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/storage/storage_pref.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/primary_button.dart';
import '../../../on_board/view/pages/on_board_view.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: PrimaryButton(
              title: "Yes, Notify me",
              width: 100,
              color: AppColors.secondary,
              height: 50,
              onTap: () async {
                await setNotifyMe(true);
              },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: PrimaryButton(
            title: "Not Now",
            width: 100,
            color: Colors.transparent,
            height: 50,
            onTap: () async {
              await setNotifyMe(false);
            },
          ),
        ),
      ],
    );
  }
}

Future<void> setNotifyMe(bool value) async {
  await StoragePref.setbool(
    key: 'notifyme',
    value: value,
  );
  Get.offNamed(OnBoardView.routeName);
}
