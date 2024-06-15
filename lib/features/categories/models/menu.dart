class MenuModel {
  int? id;
  String? image;
  String? enName;
  String? frName;
  dynamic slug;
  int? isStatic;
  int? showInHomePage;
  String? url;
  int? status;
  dynamic categoryId;
  dynamic productId;
  int? storeId;
  dynamic parentId;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? imageLink;

  MenuModel({
    this.id,
    this.image,
    this.enName,
    this.frName,
    this.slug,
    this.isStatic,
    this.showInHomePage,
    this.url,
    this.status,
    this.categoryId,
    this.productId,
    this.storeId,
    this.parentId,
    this.createdAt,
    this.updatedAt,
    this.imageLink,
  });

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        id: json['id'] as int?,
        image: json['image'] as String?,
        enName: json['en_name'] as String?,
        frName: json['fr_name'] as String?,
        slug: json['slug'] as dynamic,
        isStatic: json['is_static'] as int?,
        showInHomePage: json['show_in_home_page'] as int?,
        url: json['url'] as String?,
        status: json['status'] as int?,
        categoryId: json['category_id'] as dynamic,
        productId: json['product_id'] as dynamic,
        storeId: json['store_id'] as int?,
        parentId: json['parent_id'] as dynamic,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        imageLink: json['image_link'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'en_name': enName,
        'fr_name': frName,
        'slug': slug,
        'is_static': isStatic,
        'show_in_home_page': showInHomePage,
        'url': url,
        'status': status,
        'category_id': categoryId,
        'product_id': productId,
        'store_id': storeId,
        'parent_id': parentId,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'image_link': imageLink,
      };
}
