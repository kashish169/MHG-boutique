import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class App {
  static String token = '';
  static initSettings() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );
    await dotenv.load(fileName: ".env");
  }
}
