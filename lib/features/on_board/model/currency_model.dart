class CurrencyModel {
  int id;
  String currency;
  dynamic iso;
  dynamic symbol;
  dynamic convertFromUsd;
  dynamic createdAt;
  dynamic updatedAt;

  CurrencyModel({
    required this.id,
    required this.currency,
    this.iso,
    this.symbol,
    this.convertFromUsd,
    this.createdAt,
    this.updatedAt,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => CurrencyModel(
        id: json["id"],
        currency: json["currency"],
        iso: json["iso"],
        symbol: json["symbol"],
        convertFromUsd: json["convert_from_usd"].toDouble(),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}
