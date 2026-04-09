import 'dart:convert';

String productTagModelToJson(ProductTagModel data) =>
    json.encode(data.toJson());

class ProductTagModel {
  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  ProductTagModel({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductTagModel.fromJson(Map<String, dynamic> json) =>
      ProductTagModel(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
