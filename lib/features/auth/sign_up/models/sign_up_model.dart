import 'dart:convert';

String signUpModelToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
  SignUpModel({
    required this.email,
    required this.verificationCode,
    required this.userName,
    required this.password,
    required this.phoneNumber,
    required this.accountType,
    this.fcmToken,
    this.gender,
    this.dob,
    this.token,
    this.notifyMe,
    required this.countryName,
    required this.countryId,
  });

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
  String countryName;
  String verificationCode;
  int countryId;

  Map<String, dynamic> toJson() => {
        "name": userName,
        "verification_code": verificationCode,
        "phone_number": phoneNumber,
        "email": email,
        "fcm_token": fcmToken ?? '',
        'password': password,
        'account_type': accountType,
        'gender': gender,
        'dob': dob,
        'notify_me': notifyMe,
        'token': token,
        'country_name': countryName,
        'country_id': countryId,
      };
}
