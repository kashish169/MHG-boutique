class SliderModel {
  int id;
  String backgroundImage;
  String thumbnail;
  String enTitle;
  String enSubTitle;
  String enDescription;
  String enButtonText;
  String frTitle;
  String frSubTitle;
  String frDescription;
  String frButtonText;
  DateTime createdAt;
  DateTime updatedAt;
  String thumbnailLink;
  String backgroundImageLink;

  SliderModel({
    required this.id,
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
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
        id: json["id"],
        backgroundImage: json["Background_Image"],
        thumbnail: json["Thumbnail"],
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
      );
}
