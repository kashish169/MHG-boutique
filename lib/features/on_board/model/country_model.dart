class CountryModel {
  int id;
  int currencyId;
  String name;
  String falg;
  String flagLink;
  dynamic createdAt;
  dynamic updatedAt;
  Currency currency;
  CountryModel({
    required this.id,
    required this.currencyId,
    required this.name,
    required this.falg,
    required this.flagLink,
    required this.createdAt,
    required this.updatedAt,
    required this.currency,
  });
  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        id: json['id'],
        currencyId: json['currency_id'],
        name: json['name'],
        falg: json['flag'],
        flagLink: json['flag_link'],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        currency: Currency.fromJson(json["currency"]),
      );
}

class Currency {
  int id;
  String currency;
  dynamic iso;
  dynamic symbol;
  dynamic convertFromUsd;
  dynamic createdAt;
  dynamic updatedAt;

  Currency({
    required this.id,
    required this.currency,
    this.iso,
    this.symbol,
    this.convertFromUsd,
    this.createdAt,
    this.updatedAt,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        id: json["id"],
        currency: json["currency"],
        iso: json["iso"],
        symbol: json["symbol"],
        convertFromUsd: json["convert_from_usd"].toDouble(),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class TermsModel {
  int id;
  String location;
  String englishDescription;
  String arabicDescription;
  dynamic createdAt;
  dynamic updatedAt;
  TermsModel({
    required this.id,
    required this.location,
    required this.englishDescription,
    required this.arabicDescription,
    required this.createdAt,
    required this.updatedAt,
  });
}
