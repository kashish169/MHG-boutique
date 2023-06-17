class ProductDetailsCategoryModel {
  int id;
  dynamic externalId;
  String enCategoryName;
  String frCategoryName;
  String enCategorySlug;
  String frCategorySlug;
  dynamic categoryIcon;
  dynamic enDescription;
  dynamic frDescription;
  dynamic parentId;
  dynamic brandId;
  int storeId;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  ProductDetailsCategoryModel({
    required this.id,
    this.externalId,
    required this.enCategoryName,
    required this.frCategoryName,
    required this.enCategorySlug,
    required this.frCategorySlug,
    this.categoryIcon,
    this.enDescription,
    this.frDescription,
    this.parentId,
    this.brandId,
    required this.storeId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductDetailsCategoryModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsCategoryModel(
        id: json["id"],
        externalId: json["external_id"],
        enCategoryName: json["en_Category_Name"],
        frCategoryName: json["fr_Category_Name"],
        enCategorySlug: json["en_Category_Slug"],
        frCategorySlug: json["fr_Category_Slug"],
        categoryIcon: json["Category_Icon"],
        enDescription: json["en_Description"],
        frDescription: json["fr_Description"],
        parentId: json["parent_id"],
        brandId: json["brand_id"],
        storeId: json["store_id"],
        status: json["Status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
