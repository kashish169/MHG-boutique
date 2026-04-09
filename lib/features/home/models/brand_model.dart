class BrandModel {
  int id;
  dynamic enBrandName;
  dynamic frBrandName;
  dynamic enBrandSlug;
  dynamic frBrandSlug;
  dynamic brandImage;
  dynamic status;
  dynamic storeId;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic imageLink;

  BrandModel({
    required this.id,
    required this.enBrandName,
    required this.frBrandName,
    required this.enBrandSlug,
    required this.frBrandSlug,
    required this.brandImage,
    required this.status,
    required this.storeId,
    required this.createdAt,
    required this.updatedAt,
    required this.imageLink,
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) => BrandModel(
        id: json["id"],
        enBrandName: json["en_BrandName"],
        frBrandName: json["fr_BrandName"],
        enBrandSlug: json["en_BrandSlug"],
        frBrandSlug: json["fr_BrandSlug"],
        brandImage: json["BrandImage"],
        status: json["Status"],
        storeId: json["store_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imageLink: json["image_link"],
      );
}
