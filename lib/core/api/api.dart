import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../app/app.dart';

class Api {
  static String baseUrl = dotenv.env["ROOT_API"] ?? "";
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static Map<String, String> authorizedheaders = {
    'Content-Type': 'application/json',
    'Authorization': "Bearer ${App.token}",
  };
  static String signUp = "/api/v1/users/auth/register";
  static String login = "/api/v1/users/auth/login-with-phone";
}
