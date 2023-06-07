import 'package:flutter/material.dart';
import '../../../../constants/app_assets.dart';
import '../widget/bottom_button.dart';
import '../widget/top_part.dart';

class NotificationPermission extends StatelessWidget {
  const NotificationPermission({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.backgroungimage),
                fit: BoxFit.cover),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Column(children: [ENotificationsTopPart()]),
              ),
              BottomButton(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    ));
  }
}
