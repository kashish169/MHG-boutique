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
        id: (json["id"] as num?)?.toInt() ?? 0,
        currency: json["currency"]?.toString() ?? '',
        iso: json["iso"],
        symbol: json["symbol"],
        convertFromUsd: (json["convert_from_usd"] as num?)?.toDouble(),
        createdAt: _parseDate(json["created_at"]),
        updatedAt: _parseDate(json["updated_at"]),
      );
}

DateTime? _parseDate(dynamic value) {
  if (value == null) return null;
  final raw = value.toString();
  if (raw.isEmpty) return null;
  return DateTime.tryParse(raw);
}
