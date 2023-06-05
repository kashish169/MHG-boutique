import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App {
  static String token = '';
  static initSettings() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );
  }
}
