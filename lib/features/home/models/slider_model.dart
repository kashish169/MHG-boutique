import 'dart:developer';

class SliderModel {
  int id;
  dynamic backgroundImage;
  dynamic thumbnail;
  dynamic enTitle;
  dynamic enSubTitle;
  dynamic enDescription;
  dynamic enButtonText;
  dynamic frTitle;
  dynamic frSubTitle;
  dynamic frDescription;
  dynamic frButtonText;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic thumbnailLink;
  dynamic backgroundImageLink;
  dynamic link;
  String? videoLinkk;
  dynamic categoryId;
  dynamic productId;

  SliderModel(
      {required this.id,
      required this.backgroundImage,
      required this.thumbnail,
      required this.enTitle,
      required this.enSubTitle,
      required this.enDescription,
      required this.enButtonText,
      required this.frTitle,
      required this.frSubTitle,
      required this.frDescription,
      required this.frButtonText,
      required this.createdAt,
      required this.updatedAt,
      required this.thumbnailLink,
      required this.backgroundImageLink,
      required this.link,
      required this.categoryId,
      required this.productId,
      this.videoLinkk});

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      id: json["id"],
      backgroundImage: json["Background_Image"],
      thumbnail: json["Thumbnail"],
      videoLinkk: json['video_link'],
      enTitle: json["en_Title"],
      enSubTitle: json["en_Sub_Title"],
      enDescription: json["en_Description"],
      enButtonText: json["en_Button_Text"],
      frTitle: json["fr_Title"],
      frSubTitle: json["fr_Sub_Title"],
      frDescription: json["fr_Description"],
      frButtonText: json["fr_Button_Text"],
      createdAt: DateTime.parse(json["created_at"]),
      updatedAt: DateTime.parse(json["updated_at"]),
      thumbnailLink: json["thumbnail_link"],
      backgroundImageLink: json["background_image_link"],
      link: json["link"],
      categoryId: json["category_id"],
      productId: json["product_id"],
    );
  }
}
