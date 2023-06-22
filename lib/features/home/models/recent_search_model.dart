class RecentSearchModel {
  int id;
  String query;
  dynamic createdAt;
  dynamic updatedAt;
  bool isSearch;

  RecentSearchModel(
      {required this.id,
      required this.query,
      required this.createdAt,
      required this.updatedAt,
      this.isSearch = false});

  factory RecentSearchModel.fromJson(Map<String, dynamic> json) =>
      RecentSearchModel(
        id: json["id"],
        query: json['query'],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
