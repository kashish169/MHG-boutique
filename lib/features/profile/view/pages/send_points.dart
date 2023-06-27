import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/widgets/custom_app_bar.dart';

class SendPointsPage extends StatelessWidget {
  static String routeName = '/send_points';
  const SendPointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Send Points"),
      body: Obx(() => Column(
        children: [
          
        ],
      )),
    );
  }
}
