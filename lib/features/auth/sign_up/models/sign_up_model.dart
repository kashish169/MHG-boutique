import 'dart:convert';

String signUpModelToJson(SignUpModel data, {bool isSocial = false}) =>
    json.encode(isSocial ? data.toJsonSocial() : data.toJson());

class SignUpModel {
  SignUpModel({
    this.email,
    this.verificationCode,
    this.userName,
    this.password,
    this.phoneNumber,
    this.accountType,
    this.fcmToken,
    this.gender,
    this.dob,
    this.token,
    this.notifyMe,
    this.countryName,
    this.countryId,
  });

  String? userName;
  String? email;
  String? phoneNumber;
  String? password;
  String? fcmToken;
  String? accountType;
  String? gender;
  String? dob;
  int? notifyMe;
  String? token;
  String? countryName;
  String? verificationCode;
  int? countryId;

  Map<String, dynamic> toJsonSocial() => {
        "name": userName,
        "email": email,
        'account_type': accountType,
        'token': token,
        'country_name': countryName,
        'country_id': countryId,
        'dob': dob,
        'notify_me': notifyMe,
        "fcm_token": fcmToken ?? '',
      };
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
