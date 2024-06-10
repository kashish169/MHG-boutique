import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/auth/sign_up/repository/sign_up_repository.dart';
import 'package:mhg/features/splash/view/splash_view.dart';
import 'package:mhg/features/swipe/view/pages/swipe_page.dart';
import 'package:mhg/theme/theme.dart';
import 'app/app.dart';
import 'constants/app_toasts.dart';
import 'core/api/api.dart';
import 'core/httpservices/http_services_impl.dart';
import 'core/languages/languages.dart';
import 'core/models/api_response.dart';
import 'core/models/failure.dart';
import 'core/routes/app_routes.dart';
import 'core/storage/storage_pref.dart';
import 'features/auth/sign_up/models/sign_up_model.dart';
import 'features/auth/sign_up/repository/sign_up_repo_impl.dart';
import 'features/on_board/model/country_model.dart';
import 'widgets/show_snakBar.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
      navigatorKey: navigatorKey,
      getPages: AppRoutes.getRoutes,
      translations: Language(),
      locale: Get.locale,
      initialRoute: SplashView.routeName,
    );
  }
}
