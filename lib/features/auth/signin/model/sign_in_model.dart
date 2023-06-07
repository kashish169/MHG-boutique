import 'dart:convert';

String signInModelToJson(SignInModel data) => json.encode(data.toJson());

class SignInModel {
  SignInModel(
      {required this.password,
      required this.role,
      required this.phoneNumber,
      required this.fbToken});

  String password;
  String role;
  String phoneNumber;
  String fbToken;

  Map<String, dynamic> toJson() => {
        "phone_number": phoneNumber,
        "password": password,
        "role": role,
        "fb_token": fbToken,
      };
}
