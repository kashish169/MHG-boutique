class ReviewModel {
  int productId;
  int userId;
  int rating;
  String feedback;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  ReviewModel({
    required this.productId,
    required this.userId,
    required this.rating,
    required this.feedback,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        productId: json["product_id"],
        userId: json["user_id"],
        rating: json["rating"],
        feedback: json["feedback"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );
}
