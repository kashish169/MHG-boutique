import 'dart:convert';

String signUpModelToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
  SignUpModel(
      {required this.email,
      required this.userName,
      required this.password,
      required this.phoneNumber,
      required this.accountType,
      this.fcmToken,
      this.gender,
      this.dob,
      this.token,
      this.notifyMe});
  String userName;
  String email;
  String phoneNumber;
  String password;
  String? fcmToken;
  String accountType;
  String? gender;
  String? dob;
  int? notifyMe;
  String? token;

  Map<String, dynamic> toJson() => {
        "name": userName,
        "phone_number": phoneNumber,
        "email": email,
        "fcm_token": fcmToken ?? '',
        'password': password,
        'account_type': accountType,
        'gender': gender,
        'dob': dob,
        'notify_me': notifyMe,
        'token': token,
      };
}
