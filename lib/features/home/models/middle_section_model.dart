// import 'dart:convert';
// import 'dart:developer';

// class MiddleSectionModel {
//   final int? id;
//   final String? image;
//   final dynamic video;
//   final String? enTitle;
//   final String? arTitle;
//   final dynamic menuId;
//   final dynamic categoryId;
//   final dynamic productId;
//   final int? brandId;
//   final int? storeId;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final String? imageLink;
//   final dynamic videoLink;
//   final Brand? brand;
//   final dynamic menu;

//   MiddleSectionModel(
//       {required this.id,
//       this.image,
//       this.enTitle,
//       this.arTitle,
//       this.menuId,
//       this.brandId,
//       this.storeId,
//       this.createdAt,
//       this.updatedAt,
//       this.videoLink,
//       required this.imageLink,
//       this.menu,
//       this.categoryId,
//       this.productId});

//   factory MiddleSectionModel.fromJson(Map<String, dynamic> json) {
//     log('VIDEO VIDEO VIDEO VIDEO: ${jsonEncode(json)}');

//     return MiddleSectionModel(
//         id: json["id"],
//         videoLink: json['video_link'],
//         image: json["image"],
//         enTitle: json["en_title"],
//         arTitle: json["ar_title"],
//         menuId: json["menu_id"],
//         brandId: json["brand_id"],
//         storeId: json["store_id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         imageLink: json["image_link"],
//         menu: json["menu"],
//         categoryId: json["category_id"],
//         productId: json["product_id"]);
//   }
// }
