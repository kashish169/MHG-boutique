// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';


class CategoriesModel {
  List<Menu> menus;

  CategoriesModel({
    required this.menus,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
    menus: List<Menu>.from(json["menus"].map((x) => Menu.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "menus": List<dynamic>.from(menus.map((x) => x.toJson())),
  };
}

class Menu {
  int id;
  String? image;
  String enName;
  String frName;
  dynamic slug;
  int isStatic;
  String url;
  int status;
  int? categoryId;
  int? productId;
  int? parentId;
  DateTime createdAt;
  DateTime updatedAt;
  String? imageLink;
  List<Menu> allActiveSubMenus;

  Menu({
    required this.id,
    this.image,
    required this.enName,
    required this.frName,
    this.slug,
    required this.isStatic,
    required this.url,
    required this.status,
    this.categoryId,
    this.productId,
    this.parentId,
    required this.createdAt,
    required this.updatedAt,
    this.imageLink,
    required this.allActiveSubMenus,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
    id: json["id"],
    image: json["image"],
    enName: json["en_name"],
    frName: json["fr_name"],
    productId: json["product_id"],
    slug: json["slug"],
    isStatic: json["is_static"],
    url: json["url"],
    status: json["status"],
    categoryId: json["category_id"],
    parentId: json["parent_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    imageLink: json["image_link"],
    allActiveSubMenus: List<Menu>.from(json["all_active_sub_menus"].map((x) => Menu.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "en_name": enName,
    "fr_name": frName,
    "product_id": productId,
    "slug": slug,
    "is_static": isStatic,
    "url": url,
    "status": status,
    "category_id": categoryId,
    "parent_id": parentId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "image_link": imageLink,
    "all_active_sub_menus": List<dynamic>.from(allActiveSubMenus.map((x) => x.toJson())),
  };
}
