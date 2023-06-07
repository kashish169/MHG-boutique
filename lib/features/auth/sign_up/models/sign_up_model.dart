import 'dart:convert';
import 'dart:io';

String signUpModelToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
  SignUpModel({
    required this.fullName,
    required this.password,
    required this.userName,
    required this.email,
    required this.passport,
     this.tradeLicenseNumber,
    this.tradeLicenseFile,
    required this.userType,
    this.fcmToken,
    this.phoneNumber,
    this.packageId
  });

  String fullName;
  String userName;
  String email;
  String? phoneNumber;

  String password;
  String passport;
  String? tradeLicenseNumber;
  File? tradeLicenseFile;
  String? packageId;
  String userType;
  String? fcmToken;


  Map<String, dynamic> toJson() => {
    "full_name": fullName,
    "user_name": password,
    "email": email,
    if(phoneNumber!=null)
    "phone_number": phoneNumber,
    "password": password,
    "passport": passport,
    if(tradeLicenseNumber!=null)
    "trade_license_number": tradeLicenseNumber,
    if(tradeLicenseFile!=null)
    "trade_license_copy": tradeLicenseFile,
    if(packageId!=null)
    "package_id": packageId,
    "user_type": userType,
    if(fcmToken!=null)
    "fcm_token": fcmToken,




  };
}
