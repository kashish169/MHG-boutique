class ResponseSocialLoginModel {
  int? id;
  dynamic externalId;
  String? qrCode;
  String? name;
  String? slug;
  String? email;
  String? accountType;
  String? googleId;
  dynamic facebookId;
  dynamic appleId;
  String? image;
  dynamic number;
  dynamic gender;
  dynamic dob;
  dynamic streetAddress;
  dynamic state;
  dynamic zipCode;
  dynamic about;
  int? isAdmin;
  int? status;
  String? countryName;
  int? countryId;
  String? amountSpent;
  String? currentYearAmountSpent;
  String? hearts;
  String? currentYearHearts;
  dynamic referalCode;
  dynamic userReferalId;
  dynamic tierId;
  dynamic storeId;
  int? byImport;
  dynamic countryLoyaltyTierId;
  dynamic lastLoginAt;
  dynamic emailVerifiedAt;
  int? notifyMe;
  int? personalizedAds;
  dynamic sourceStoreId;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? token;
  String? qrCodeLink;
  String? imageLink;
  String? invitationLink;

  ResponseSocialLoginModel({
    this.id,
    this.externalId,
    this.qrCode,
    this.name,
    this.slug,
    this.email,
    this.accountType,
    this.googleId,
    this.facebookId,
    this.appleId,
    this.image,
    this.number,
    this.gender,
    this.dob,
    this.streetAddress,
    this.state,
    this.zipCode,
    this.about,
    this.isAdmin,
    this.status,
    this.countryName,
    this.countryId,
    this.amountSpent,
    this.currentYearAmountSpent,
    this.hearts,
    this.currentYearHearts,
    this.referalCode,
    this.userReferalId,
    this.tierId,
    this.storeId,
    this.byImport,
    this.countryLoyaltyTierId,
    this.lastLoginAt,
    this.emailVerifiedAt,
    this.notifyMe,
    this.personalizedAds,
    this.sourceStoreId,
    this.createdAt,
    this.updatedAt,
    this.token,
    this.qrCodeLink,
    this.imageLink,
    this.invitationLink,
  });

  factory ResponseSocialLoginModel.fromJson(Map<String, dynamic> json) =>
      ResponseSocialLoginModel(
        id: json['id'] as int?,
        externalId: json['external_id'] as dynamic,
        qrCode: json['qr_code'] as String?,
        name: json['name'] as String?,
        slug: json['slug'] as String?,
        email: json['email'] as String?,
        accountType: json['account_type'] as String?,
        googleId: json['google_id'] as String?,
        facebookId: json['facebook_id'] as dynamic,
        appleId: json['apple_id'] as dynamic,
        image: json['image'] as String?,
        number: json['Number'] as dynamic,
        gender: json['Gender'] as dynamic,
        dob: json['DOB'] as dynamic,
        streetAddress: json['street_address'] as dynamic,
        state: json['state'] as dynamic,
        zipCode: json['zip_code'] as dynamic,
        about: json['About'] as dynamic,
        isAdmin: json['is_admin'] as int?,
        status: json['status'] as int?,
        countryName: json['country_name'] as String?,
        countryId: json['country_id'] as int?,
        amountSpent: json['amount_spent'] as String?,
        currentYearAmountSpent: json['current_year_amount_spent'] as String?,
        hearts: json['hearts'] as String?,
        currentYearHearts: json['current_year_hearts'] as String?,
        referalCode: json['referal_code'] as dynamic,
        userReferalId: json['user_referal_id'] as dynamic,
        tierId: json['tier_id'] as dynamic,
        storeId: json['store_id'] as dynamic,
        byImport: json['by_import'] as int?,
        countryLoyaltyTierId: json['country_loyalty_tier_id'] as dynamic,
        lastLoginAt: json['last_login_at'] as dynamic,
        emailVerifiedAt: json['email_verified_at'] as dynamic,
        notifyMe: json['notify_me'] as int?,
        personalizedAds: json['personalized_ads'] as int?,
        sourceStoreId: json['source_store_id'] as dynamic,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        token: json['token'] as String?,
        qrCodeLink: json['qr_code_link'] as String?,
        imageLink: json['image_link'] as String?,
        invitationLink: json['invitation_link'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'external_id': externalId,
        'qr_code': qrCode,
        'name': name,
        'slug': slug,
        'email': email,
        'account_type': accountType,
        'google_id': googleId,
        'facebook_id': facebookId,
        'apple_id': appleId,
        'image': image,
        'Number': number,
        'Gender': gender,
        'DOB': dob,
        'street_address': streetAddress,
        'state': state,
        'zip_code': zipCode,
        'About': about,
        'is_admin': isAdmin,
        'status': status,
        'country_name': countryName,
        'country_id': countryId,
        'amount_spent': amountSpent,
        'current_year_amount_spent': currentYearAmountSpent,
        'hearts': hearts,
        'current_year_hearts': currentYearHearts,
        'referal_code': referalCode,
        'user_referal_id': userReferalId,
        'tier_id': tierId,
        'store_id': storeId,
        'by_import': byImport,
        'country_loyalty_tier_id': countryLoyaltyTierId,
        'last_login_at': lastLoginAt,
        'email_verified_at': emailVerifiedAt,
        'notify_me': notifyMe,
        'personalized_ads': personalizedAds,
        'source_store_id': sourceStoreId,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'token': token,
        'qr_code_link': qrCodeLink,
        'image_link': imageLink,
        'invitation_link': invitationLink,
      };
}
