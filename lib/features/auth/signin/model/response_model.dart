// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  int? id;
  dynamic externalId;
  String? qrCode;
  String name;
  String email;
  String accountType;
  dynamic googleId;
  dynamic facebookId;
  dynamic image;
  dynamic number;
  dynamic gender;
  dynamic dob;
  dynamic streetAddress;
  dynamic about;
  int? isAdmin;
  int? status;
  dynamic countryId;
  String? amountSpent;
  String? hearts;
  dynamic tierId;
  dynamic storeId;
  dynamic countryLoyaltyTierId;
  dynamic emailVerifiedAt;
  int? notifyMe;
  DateTime? createdAt;
  DateTime? updatedAt;
  String token;
  String? qrCodeLink;
  String? imageLink;

  LoginModel({
    this.id,
    this.externalId,
    this.qrCode,
    required this.name,
    required this.email,
    required this.accountType,
    this.googleId,
    this.facebookId,
    this.image,
    required this.number,
    this.gender,
    this.dob,
    this.streetAddress,
    this.about,
    this.isAdmin,
    this.status,
    this.countryId,
    this.amountSpent,
    this.hearts,
    this.tierId,
    this.storeId,
    this.countryLoyaltyTierId,
    this.emailVerifiedAt,
    this.notifyMe,
    this.createdAt,
    this.updatedAt,
    required this.token,
    this.qrCodeLink,
    this.imageLink,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        id: json["id"],
        externalId: json["external_id"],
        qrCode: json["qr_code"],
        name: json["name"],
        email: json["email"],
        accountType: json["account_type"],
        googleId: json["google_id"],
        facebookId: json["facebook_id"],
        image: json["image"],
        number: json["Number"],
        gender: json["Gender"],
        dob: json["DOB"],
        streetAddress: json["street_address"],
        about: json["About"],
        isAdmin: json["is_admin"],
        status: json["status"],
        countryId: json["country_id"],
        amountSpent: json["amount_spent"],
        hearts: json["hearts"],
        tierId: json["tier_id"],
        storeId: json["store_id"],
        countryLoyaltyTierId: json["country_loyalty_tier_id"],
        emailVerifiedAt: json["email_verified_at"],
        notifyMe: json["notify_me"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        token: json["token"],
        qrCodeLink: json["qr_code_link"],
        imageLink: json["image_link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "external_id": externalId,
        "qr_code": qrCode,
        "name": name,
        "email": email,
        "account_type": accountType,
        "google_id": googleId,
        "facebook_id": facebookId,
        "image": image,
        "Number": number,
        "Gender": gender,
        "DOB": dob,
        "street_address": streetAddress,
        "About": about,
        "is_admin": isAdmin,
        "status": status,
        "country_id": countryId,
        "amount_spent": amountSpent,
        "hearts": hearts,
        "tier_id": tierId,
        "store_id": storeId,
        "country_loyalty_tier_id": countryLoyaltyTierId,
        "email_verified_at": emailVerifiedAt,
        "notify_me": notifyMe,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "token": token,
        "qr_code_link": qrCodeLink,
        "image_link": imageLink,
      };
}
