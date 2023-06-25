class PraivacyModel {
  int id;
  String location;
  String englishDescription;
  String arabicDescription;
  dynamic createdAt;
  dynamic updatedAt;
  PraivacyModel({
    required this.id,
    required this.location,
    required this.englishDescription,
    required this.arabicDescription,
    required this.createdAt,
    required this.updatedAt,
  });
  factory PraivacyModel.fromJson(Map<String, dynamic> json) => PraivacyModel(
        id: json['id'],
        location: json['location'],
        englishDescription: json['en_description'],
        arabicDescription: json['fr_description'],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
