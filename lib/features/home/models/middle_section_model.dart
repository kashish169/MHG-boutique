class MiddleSectionModel {
  int id;
  dynamic image;
  dynamic enTitle;
  dynamic arTitle;
  dynamic menuId;
  dynamic brandId;
  dynamic storeId;
  dynamic createdAt;
  dynamic updatedAt;
  String imageLink;
  dynamic menu;

  MiddleSectionModel({
    required this.id,
    this.image,
    this.enTitle,
    this.arTitle,
    this.menuId,
    this.brandId,
    this.storeId,
    this.createdAt,
    this.updatedAt,
    required this.imageLink,
    this.menu,
  });

  factory MiddleSectionModel.fromJson(Map<String, dynamic> json) =>
      MiddleSectionModel(
        id: json["id"],
        image: json["image"],
        enTitle: json["en_title"],
        arTitle: json["ar_title"],
        menuId: json["menu_id"],
        brandId: json["brand_id"],
        storeId: json["store_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imageLink: json["image_link"],
        menu: json["menu"],
      );
}
