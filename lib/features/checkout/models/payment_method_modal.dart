class PaymentMethodsModel {
  int id;
  String name;
  String slug;
  dynamic image;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  PaymentMethodsModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PaymentMethodsModel.fromJson(Map<String, dynamic> json) =>
      PaymentMethodsModel(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        image: json["image"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
