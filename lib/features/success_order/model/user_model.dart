class UserModel {
  int id;
  String externalId;
  String qrCode;
  String name;
  String slug;
  String email;
  String accountType;
  dynamic googleId;
  dynamic facebookId;
  dynamic image;
  String number;
  dynamic gender;
  dynamic dOB;
  String streetAddress;
  String state;
  String zipCode;
  dynamic about;
  dynamic isAdmin;
  dynamic status;
  dynamic countryName;
  dynamic countryId;
  String amountSpent;
  String hearts;
  dynamic referalCode;
  dynamic userReferalId;
  dynamic tierId;
  dynamic storeId;
  dynamic countryLoyaltyTierId;
  dynamic emailVerifiedAt;
  dynamic notifyMe;
  dynamic personalizedAds;
  DateTime createdAt;
  DateTime updatedAt;
  String qrCodeLink;
  String imageLink;
  String invitationLink;

  UserModel(
      {required this.id,
      required this.externalId,
      required this.qrCode,
      required this.name,
      required this.slug,
      required this.email,
      required this.accountType,
      this.googleId,
      this.facebookId,
      this.image,
      required this.number,
      this.gender,
      this.dOB,
      required this.streetAddress,
      required this.state,
      required this.zipCode,
      this.about,
      required this.isAdmin,
      required this.status,
      this.countryName,
      required this.countryId,
      required this.amountSpent,
      required this.hearts,
      this.referalCode,
      this.userReferalId,
      required this.tierId,
      this.storeId,
      required this.countryLoyaltyTierId,
      this.emailVerifiedAt,
      required this.notifyMe,
      required this.personalizedAds,
      required this.createdAt,
      required this.updatedAt,
      required this.qrCodeLink,
      required this.imageLink,
      required this.invitationLink});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        externalId: json['external_id'],
        qrCode: json['qr_code'],
        name: json['name'],
        slug: json['slug'],
        email: json['email'],
        accountType: json['account_type'],
        googleId: json['google_id'],
        facebookId: json['facebook_id'],
        image: json['image'],
        number: json['Number'],
        gender: json['Gender'],
        dOB: json['DOB'],
        streetAddress: json['street_address'],
        state: json['state'],
        zipCode: json['zip_code'],
        about: json['About'],
        isAdmin: json['is_admin'],
        status: json['status'],
        countryName: json['country_name'],
        countryId: json['country_id'],
        amountSpent: json['amount_spent'],
        hearts: json['hearts'],
        referalCode: json['referal_code'],
        userReferalId: json['user_referal_id'],
        tierId: json['tier_id'],
        storeId: json['store_id'],
        countryLoyaltyTierId: json['country_loyalty_tier_id'],
        emailVerifiedAt: json['email_verified_at'],
        notifyMe: json['notify_me'],
        personalizedAds: json['personalized_ads'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        qrCodeLink: json['qr_code_link'],
        imageLink: json['image_link'],
        invitationLink: json['invitation_link'],
      );
}
