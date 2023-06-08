import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class App {
  static String fcmToken = "";
  static String token = '';
  static initSettings() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark,
    );
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    messaging.getToken().then(
          (value) => {
        if (value != null)
          {
            fcmToken = value,
            App.fcmToken = fcmToken,
            log("___FCM TOKEN IS : $fcmToken"),
          },
      },
    );
    await dotenv.load(fileName: ".env");
  }
}
