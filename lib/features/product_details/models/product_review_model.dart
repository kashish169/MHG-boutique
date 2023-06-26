class ProductReviewModel {
  int id;
  int rating;
  dynamic feedback;
  int productId;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;
  User user;

  ProductReviewModel({
    required this.id,
    required this.rating,
    required this.feedback,
    required this.productId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });

  factory ProductReviewModel.fromJson(Map<String, dynamic> json) =>
      ProductReviewModel(
        id: json["id"],
        rating: json["rating"],
        feedback: json["feedback"],
        productId: json["product_id"],
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: User.fromJson(json["user"]),
      );
}

class User {
  int id;
  dynamic externalId;
  dynamic name;
  dynamic slug;
  dynamic isAdmin;
  dynamic status;
  dynamic countryName;
  dynamic countryId;
  dynamic amountSpent;
  dynamic hearts;
  dynamic storeId;
  dynamic countryLoyaltyTierId;
  dynamic qrCodeLink;
  dynamic imageLink;

  User({
    required this.id,
    this.externalId,
    this.name,
    this.slug,
    this.isAdmin,
    this.status,
    this.countryName,
    this.countryId,
    this.amountSpent,
    this.hearts,
    this.storeId,
    this.countryLoyaltyTierId,
    this.qrCodeLink,
    this.imageLink,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        externalId: json["external_id"],
        name: json["name"],
        slug: json["slug"],
        isAdmin: json["is_admin"],
        status: json["status"],
        countryName: json["country_name"],
        countryId: json["country_id"],
        amountSpent: json["amount_spent"],
        hearts: json["hearts"],
        storeId: json["store_id"],
        countryLoyaltyTierId: json["country_loyalty_tier_id"],
        qrCodeLink: json["qr_code_link"],
        imageLink: json["image_link"],
      );
}
