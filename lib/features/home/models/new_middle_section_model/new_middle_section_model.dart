import 'dart:developer';

import 'brand.dart';

class NewMiddleSectionModel {
  final int? id;
  final String? image;
  final dynamic video;
  final String? enTitle;
  final String? arTitle;
  final dynamic menuId;
  final dynamic categoryId;
  final dynamic productId;
  final int? brandId;
  final int? storeId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? imageLink;
  final dynamic videoLink;
  final Brand? brand;
  final dynamic menu;

  const NewMiddleSectionModel({
    this.id,
    this.image,
    this.video,
    this.enTitle,
    this.arTitle,
    this.menuId,
    this.categoryId,
    this.productId,
    this.brandId,
    this.storeId,
    this.createdAt,
    this.updatedAt,
    this.imageLink,
    this.videoLink,
    this.brand,
    this.menu,
  });

  factory NewMiddleSectionModel.fromJson(Map<String, dynamic> json) {
    log('MIDDLE MIDDLE MIDDLE MIDDLE: $json');
    return NewMiddleSectionModel(
      id: json['id'] as int?,
      image: json['image'] as String?,
      video: json['video'] as dynamic,
      enTitle: json['en_title'] as String?,
      arTitle: json['ar_title'] as String?,
      menuId: json['menu_id'] as dynamic,
      categoryId: json['category_id'] as dynamic,
      productId: json['product_id'] as dynamic,
      brandId: json['brand_id'] as int?,
      storeId: json['store_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      imageLink: json['image_link'] as String?,
      videoLink: json['video_link'] as dynamic,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      menu: json['menu'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'video': video,
        'en_title': enTitle,
        'ar_title': arTitle,
        'menu_id': menuId,
        'category_id': categoryId,
        'product_id': productId,
        'brand_id': brandId,
        'store_id': storeId,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'image_link': imageLink,
        'video_link': videoLink,
        'brand': brand?.toJson(),
        'menu': menu,
      };
}
