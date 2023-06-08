import 'dart:convert';

String signInModelToJson(SignInModel data) => json.encode(data.toJson());

class SignInModel {
  SignInModel({required this.phone, required this.fbToken});

  String phone;
  String fbToken;

  Map<String, dynamic> toJson() => {
        "phone_number": phone,
        "fcm_token": fbToken,
      };
}
