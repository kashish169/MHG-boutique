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
        id: (json['id'] as num?)?.toInt() ?? 0,
        prefix: json['prefix']?.toString() ?? '',
        currencyId: (json['currency_id'] as num?)?.toInt() ?? 0,
        name: json['name']?.toString() ?? '',
        falg: json['flag']?.toString() ?? '',
        flagLink: json['flag_link']?.toString() ?? '',
        createdAt: _parseDate(json["created_at"]),
        updatedAt: _parseDate(json["updated_at"]),
        currency: CurrencyModel.fromJson(
          (json["currency"] as Map<String, dynamic>?) ?? <String, dynamic>{},
        ),
      );
}

DateTime? _parseDate(dynamic value) {
  if (value == null) return null;
  final raw = value.toString();
  if (raw.isEmpty) return null;
  return DateTime.tryParse(raw);
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
