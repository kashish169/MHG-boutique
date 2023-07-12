import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../constants/app_assets.dart';
import '../widget/bottom_button.dart';
import '../widget/top_part.dart';

class NotificationPermissionPage extends StatelessWidget {
  static String routeName = '/notification_permission';
  const NotificationPermissionPage({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.backgroungimage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: const [
              ENotificationsTopPart(),
              BottomButton(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
