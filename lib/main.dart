import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/features/splash/view/splash_view.dart';
import 'package:mhg/theme/theme.dart';
import 'app/app.dart';
import 'core/routes/app_routes.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("Handling a background message: ${message.messageId}");
}

void main() async {
  await App.initSettings();
  runApp(const MHG());
}

class MHG extends StatelessWidget {
  const MHG({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      getPages: AppRoutes.getRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
