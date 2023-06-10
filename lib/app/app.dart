import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mhg/core/storage/storage_pref.dart';

class App {
  static String fcmToken = "";
  static String token = '';

  static Future<void> initSettings() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await GetStorage.init();
    await dotenv.load(fileName: ".env");
    token = await StoragePref.getString("token");
    await getFcmToken();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark,
    );
    log("ACCESS TOKEN : $token");
  }

  static Future<void> getFcmToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    await messaging.getToken().then(
          (value) => {
            if (value != null)
              {
                fcmToken = value,
                log("___FCM TOKEN IS : $fcmToken"),
              },
          },
        );
  }
}
