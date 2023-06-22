import 'dart:convert';

ProfileInfoModal profileInfoModalFromJson(String str) =>
    ProfileInfoModal.fromJson(json.decode(str));

class ProfileInfoModal {
  ProfileInfoModal({
    required this.id,
    required this.orderCount,
    this.currentTier,
    this.nextTier,
    required this.nextTierPts,
    required this.nextTierPtsLeft,
    this.externalId,
    required this.qrCode,
    required this.name,
    required this.email,
    required this.accountType,
    this.googleId,
    this.faceBookId,
    this.image,
    this.number,
    this.gender,
    this.dob,
    this.street,
    this.about,
    this.isAdmin,
    this.status,
    this.countryId,
    this.amount,
    this.hearts,
    this.tierId,
    this.storeId,
    this.countryLoyalityId,
    this.emailVerified,
    this.notifyMe,
    this.createdAt,
    this.updatedAt,
    this.state,
    this.zipCode,
    this.countryName,
    this.country,
    required this.qrLink,
    required this.imageLink,
  });

  int id;
  int? externalId;
  String qrCode;
  String name;
  String email;
  String accountType;
  int? googleId;
  int? faceBookId;
  String? image;
  String? number;
  String? gender;
  dynamic dob;
  String? street;
  String? about;
  int? isAdmin;
  int? status;
  dynamic countryId;
  String? amount;
  String? hearts;
  dynamic tierId;
  dynamic storeId;
  dynamic countryLoyalityId;
  dynamic emailVerified;
  int? notifyMe;
  dynamic createdAt;
  dynamic updatedAt;
  String qrLink;
  String imageLink;
  int orderCount;
  String? currentTier;
  String? nextTier;
  dynamic nextTierPts;
  dynamic nextTierPtsLeft;
  String? state;
  String? zipCode;
  String? countryName;
  CountryModal? country;

  factory ProfileInfoModal.fromJson(Map<String, dynamic> json) =>
      ProfileInfoModal(
        id: json["id"],
        externalId: json["external_id"],
        qrCode: json["qr_code"],
        name: json["name"],
        email: json["email"],
        accountType: json["account_type"],
        googleId: json["google_id"],
        faceBookId: json["facebook_id"],
        image: json["image"],
        number: json["Number"],
        gender: json["Gender"],
        dob: json["DOB"],
        street: json["street_address"],
        about: json["About"],
        isAdmin: json["is_admin"],
        status: json["status"],
        countryId: json["country_id"],
        amount: json["amount_spent"],
        hearts: json["hearts"],
        tierId: json["tier_id"],
        storeId: json["store_id"],
        countryLoyalityId: json["country_loyalty_tier_id"],
        emailVerified: json["email_verified_at"],
        notifyMe: json["notify_me"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        qrLink: json["qr_code_link"],
        imageLink: json["image_link"],
        orderCount: json["orders_count"],
        currentTier: json["current_tier"],
        nextTier: json["next_tier"],
        nextTierPts: json["next_tier_pts"],
        nextTierPtsLeft: json["next_tier_pts_left"],
        state: json['state'],
        zipCode: json['zip_code'],
        countryName: json['country_name'],
       /*  country: CountryModal.fromJson(
          json['country'],
        ), */
      );
}

class CountryModal {
  Country? country;

  CountryModal({this.country});

  CountryModal.fromJson(Map<String, dynamic> json) {
    country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (country != null) {
      data['country'] = country!.toJson();
    }
    return data;
  }
}

class Country {
  int? id;
  String? name;
  String? flag;
  int? currencyId;
  String? createdAt;
  String? updatedAt;
  String? flagLink;

  Country(
      {this.id,
      this.name,
      this.flag,
      this.currencyId,
      this.createdAt,
      this.updatedAt,
      this.flagLink});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    flag = json['flag'];
    currencyId = json['currency_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    flagLink = json['flag_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['flag'] = flag;
    data['currency_id'] = currencyId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['flag_link'] = flagLink;
    return data;
  }
}
