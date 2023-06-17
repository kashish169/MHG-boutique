class CategoryModel {
  int id;
  dynamic image;
  String enName;
  String frName;
  dynamic slug;
  int isStatic;
  String url;
  int status;
  dynamic categoryId;
  dynamic parentId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic imageLink;
  List<dynamic> allActiveSubMenus;

  CategoryModel({
    required this.id,
    this.image,
    required this.enName,
    required this.frName,
    this.slug,
    required this.isStatic,
    required this.url,
    required this.status,
    this.categoryId,
    this.parentId,
    required this.createdAt,
    required this.updatedAt,
    this.imageLink,
    required this.allActiveSubMenus,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        image: json["image"],
        enName: json["en_name"],
        frName: json["fr_name"],
        slug: json["slug"],
        isStatic: json["is_static"],
        url: json["url"],
        status: json["status"],
        categoryId: json["category_id"],
        parentId: json["parent_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imageLink: json["image_link"],
        allActiveSubMenus:
            List<dynamic>.from(json["all_active_sub_menus"].map((x) => x)),
      );
}
