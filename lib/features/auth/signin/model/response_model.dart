// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

import 'package:mhg/features/on_board/model/country_model.dart';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));


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
  CountryModel country;

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
    required this.country,
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
        country: CountryModel.fromJson(json["country"]),
      );


}
