import 'dart:developer';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mhg/core/storage/storage_pref.dart';
import 'package:mhg/core/services/notification_service.dart';

class App {
  static String fcmToken = "";
  static String token = '';
  static bool? notifyMe;
  static int? countryId;
  static String currency = 'AED';
  static String countryName = '';
  static String lang = '';

  static Future<void> initSettings() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await GetStorage.init();
    await dotenv.load(fileName: ".env");
    token = await StoragePref.getString("token");
    notifyMe = await StoragePref.getbool("notifyme");
    countryId = await StoragePref.getInt("countryid");
    currency = await StoragePref.getString("currency");
    lang = await StoragePref.getString("lang");
    if (lang.isEmpty) {
      lang = "en_US";
    }
    if (currency.isEmpty) {
      currency = "AED";
    }
    NotificationService.init();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark,
    );
    log("ACCESS TOKEN : $token");
    log("NOTIFY ME : $notifyMe");
    log("COUNTRY ID : $countryId");
    log("currency is : $currency");
    log("LANG is : $lang");
    HttpOverrides.global = MyHttpOverrides();
  }
}
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}