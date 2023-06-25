class AboutUsModel {
  int id;
  String location;
  dynamic image;
  dynamic icon1;
  dynamic icon2;
  dynamic icon3;
  dynamic icon4;
  //English
  String englishtitle1;
  dynamic englishtitle2;
  dynamic englishtitle3;
  dynamic englishtitle4;
  dynamic englishsubTitle;
  String englishdescriotion1;
  dynamic englishdescriotion2;
  dynamic englishdescriotion3;
  dynamic englishdescriotion4;
  //Arabic
  String arabictitle1;
  dynamic arabictitle2;
  dynamic arabictitle3;
  dynamic arabictitle4;
  dynamic arabicsubTitle;
  String arabicdescriotion1;
  dynamic arabicdescriotion2;
  dynamic arabicdescriotion3;
  dynamic arabicdescriotion4;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic imageLink;

  AboutUsModel({
    required this.id,
    required this.location,
    required this.image,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.icon4,
    required this.englishtitle1,
    required this.englishtitle2,
    required this.englishtitle3,
    required this.englishtitle4,
    required this.englishsubTitle,
    required this.englishdescriotion1,
    required this.englishdescriotion2,
    required this.englishdescriotion3,
    required this.englishdescriotion4,
    required this.arabictitle1,
    required this.arabictitle2,
    required this.arabictitle3,
    required this.arabictitle4,
    required this.arabicsubTitle,
    required this.arabicdescriotion1,
    required this.arabicdescriotion2,
    required this.arabicdescriotion3,
    required this.arabicdescriotion4,
    required this.createdAt,
    required this.updatedAt,
    required this.imageLink,
  });
  factory AboutUsModel.fromJson(Map<String, dynamic> json) => AboutUsModel(
        id: json['id'],
        location: json['Location'],
        image: json['Image'],
        icon1: json['Icon_One'],
        icon2: json['Icon_Two'],
        icon3: json['Icon_Three'],
        icon4: json['Icon_Four'],
        englishtitle1: json['en_Title_One'],
        englishtitle2: json['en_Title_Two'],
        englishtitle3: json['en_Title_Three'],
        englishtitle4: json['en_Title_Four'],
        englishsubTitle: json['en_Subtitle'],
        englishdescriotion1: json['en_Description_One'],
        englishdescriotion2: json['en_Description_Two'],
        englishdescriotion3: json['en_Description_Three'],
        englishdescriotion4: json['en_Description_Four'],
        arabictitle1: json['fr_Title_One'],
        arabictitle2: json['fr_Title_Two'],
        arabictitle3: json['fr_Title_Three'],
        arabictitle4: json['fr_Title_Four'],
        arabicsubTitle: json['fr_Subtitle'],
        arabicdescriotion1: json['fr_Description_One'],
        arabicdescriotion2: json['fr_Description_Two'],
        arabicdescriotion3: json['fr_Description_Three'],
        arabicdescriotion4: json['fr_Description_Four'],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imageLink: json['image_link'],
      );
}
