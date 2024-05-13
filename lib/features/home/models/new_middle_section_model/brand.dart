class Brand {
  final int? id;
  final String? enBrandName;
  final String? frBrandName;
  final String? enBrandSlug;
  final String? frBrandSlug;
  final String? brandImage;
  final String? video;
  final String? status;
  final int? order;
  final int? storeId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? imageLink;
  final String? videoLink;

  const Brand({
    this.id,
    this.enBrandName,
    this.frBrandName,
    this.enBrandSlug,
    this.frBrandSlug,
    this.brandImage,
    this.video,
    this.status,
    this.order,
    this.storeId,
    this.createdAt,
    this.updatedAt,
    this.imageLink,
    this.videoLink,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json['id'] as int?,
        enBrandName: json['en_BrandName'] as String?,
        frBrandName: json['fr_BrandName'] as String?,
        enBrandSlug: json['en_BrandSlug'] as String?,
        frBrandSlug: json['fr_BrandSlug'] as String?,
        brandImage: json['BrandImage'] as String?,
        video: json['video'] as String?,
        status: json['Status'] as String?,
        order: json['order'] as int?,
        storeId: json['store_id'] as int?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        imageLink: json['image_link'] as String?,
        videoLink: json['video_link'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'en_BrandName': enBrandName,
        'fr_BrandName': frBrandName,
        'en_BrandSlug': enBrandSlug,
        'fr_BrandSlug': frBrandSlug,
        'BrandImage': brandImage,
        'video': video,
        'Status': status,
        'order': order,
        'store_id': storeId,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'image_link': imageLink,
        'video_link': videoLink,
      };
}
