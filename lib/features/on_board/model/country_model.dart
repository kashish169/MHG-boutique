import 'currency_model.dart';

class CountryModel {
  int id;
  int currencyId;
  String name;
  String falg;
  String flagLink;
  String prefix;
  dynamic createdAt;
  dynamic updatedAt;
  CurrencyModel currency;

  CountryModel({
    required this.id,
    required this.prefix,
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
        prefix: json['prefix'],
        currencyId: json['currency_id'],
        name: json['name'],
        falg: json['flag'],
        flagLink: json['flag_link'],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        currency: CurrencyModel.fromJson(json["currency"]),
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
