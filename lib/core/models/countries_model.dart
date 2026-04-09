import '../../features/on_board/model/currency_model.dart';

class CountriesModel {
  bool? isSuccessful;
  bool? hasContent;
  int? code;
  String? message;
  String? detailedError;
  List<CountryDataModel>? data;

  CountriesModel(
      {this.isSuccessful,
      this.hasContent,
      this.code,
      this.message,
      this.detailedError,
      this.data});

  CountriesModel.fromJson(Map<String, dynamic> json) {
    isSuccessful = json['isSuccessful'];
    hasContent = json['hasContent'];
    code = json['code'];
    message = json['message'];
    detailedError = json['detailed_error'];
    if (json['data'] != null) {
      data = <CountryDataModel>[];
      json['data'].forEach((v) {
        data!.add(CountryDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isSuccessful'] = isSuccessful;
    data['hasContent'] = hasContent;
    data['code'] = code;
    data['message'] = message;
    data['detailed_error'] = detailedError;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CountryDataModel {
  int? id;
  String? name;
  String? flag;
  int? currencyId;
  String? createdAt;
  String? updatedAt;
  String? flagLink;
  CurrencyModel? currency;

  CountryDataModel({
    this.id,
    this.name,
    this.flag,
    this.currencyId,
    this.createdAt,
    this.updatedAt,
    this.flagLink,
    this.currency,
  });

  CountryDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    flag = json['flag'];
    currencyId = json['currency_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    flagLink = json['flag_link'];
    currency = CurrencyModel.fromJson(json["currency"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['flag'] = flag;
    data['currency_id'] = currencyId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['flag_link'] = flagLink;
    return data;
  }
}
