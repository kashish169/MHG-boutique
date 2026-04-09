class CategoryBrandModel {
  int id;
  dynamic externalId;
  dynamic enCategoryName;
  dynamic frCategoryName;
  dynamic enCategorySlug;
  dynamic frCategorySlug;
  dynamic categoryIcon;
  dynamic enDescription;
  dynamic frDescription;
  dynamic defaultProductImage;
  dynamic parentId;
  dynamic brandId;
  dynamic storeId;
  dynamic status;
  dynamic createdAt;
  dynamic updatedAt;
  List<dynamic>? allActiveSubCategories;

  CategoryBrandModel({
    required this.id,
    this.externalId,
    this.enCategoryName,
    this.frCategoryName,
    this.enCategorySlug,
    this.frCategorySlug,
    this.categoryIcon,
    this.enDescription,
    this.frDescription,
    this.defaultProductImage,
    this.parentId,
    this.brandId,
    this.storeId,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.allActiveSubCategories,
  });

  factory CategoryBrandModel.fromJson(Map<String, dynamic> json) =>
      CategoryBrandModel(
        id: json["id"],
        externalId: json["external_id"],
        enCategoryName: json["en_Category_Name"],
        frCategoryName: json["fr_Category_Name"],
        enCategorySlug: json["en_Category_Slug"],
        frCategorySlug: json["fr_Category_Slug"],
        categoryIcon: json["Category_Icon"],
        enDescription: json["en_Description"],
        frDescription: json["fr_Description"],
        defaultProductImage: json["default_product_image"],
        parentId: json["parent_id"],
        brandId: json["brand_id"],
        storeId: json["store_id"],
        status: json["Status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        allActiveSubCategories:
            List<dynamic>.from(json["all_active_sub_categories"].map((x) => x)),
      );
}
