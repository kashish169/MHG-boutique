import 'dart:convert';

String signInModelToJson(SignInModel data) => json.encode(data.toJson());

class SignInModel {
  SignInModel({
    required this.phone,
    required this.fcmToken,
    required this.verificationCode,
  });

  String phone;
  String fcmToken;
  String verificationCode;

  Map<String, dynamic> toJson() => {
        "phone_number": phone,
        "fcm_token": fcmToken,
        "verification_code": verificationCode,
      };
}

String signInWithOutOtpModel(SignInWithOutOtpModel data) =>
    json.encode(data.toJson());

class SignInWithOutOtpModel {
  SignInWithOutOtpModel(
      {this.email,
      required this.fcmToken,
      required this.password,
      this.phoneNumber});
  String? email;
  String fcmToken;
  String password;
  String? phoneNumber;

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "fcm_token": fcmToken,
        "phone_number": phoneNumber
      };
}
