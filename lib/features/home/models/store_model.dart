class StoreModel {
  int id;
  String name;
  String externalId;
  String email;
  dynamic domain;
  dynamic province;
  dynamic address1;
  dynamic address2;
  dynamic zip;
  dynamic city;
  dynamic phone;
  dynamic latitude;
  dynamic longitude;
  dynamic customerEmail;
  dynamic timezone;
  dynamic ianaTimezone;
  dynamic shopOwner;
  dynamic taxesIncluded;
  dynamic planDisplayName;
  dynamic planName;
  dynamic myshopifyDomain;
  dynamic currencyId;
  dynamic primaryLocationId;
  dynamic image;
  dynamic countryId;
  DateTime? createdAt;
  DateTime? updatedAt;

  StoreModel({
    required this.id,
    required this.name,
    required this.externalId,
    required this.email,
    this.domain,
    this.province,
    this.address1,
    this.address2,
    this.zip,
    this.city,
    this.phone,
    this.latitude,
    this.longitude,
    this.customerEmail,
    this.timezone,
    this.ianaTimezone,
    this.shopOwner,
    this.taxesIncluded,
    this.planDisplayName,
    this.planName,
    this.myshopifyDomain,
    this.currencyId,
    this.primaryLocationId,
    this.image,
    this.countryId,
    this.createdAt,
    this.updatedAt,
  });

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        id: json["id"],
        name: json["name"],
        externalId: json["external_id"],
        email: json["email"],
        domain: json["domain"],
        province: json["province"],
        address1: json["address_1"],
        address2: json["address_2"],
        zip: json["zip"],
        city: json["city"],
        phone: json["phone"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        customerEmail: json["customer_email"],
        timezone: json["timezone"],
        ianaTimezone: json["iana_timezone"],
        shopOwner: json["shop_owner"],
        taxesIncluded: json["taxes_included"],
        planDisplayName: json["plan_display_name"],
        planName: json["plan_name"],
        myshopifyDomain: json["myshopify_domain"],
        currencyId: json["currency_id"],
        primaryLocationId: json["primary_location_id"],
        image: json["image"],
        countryId: json["country_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
