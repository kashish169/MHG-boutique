class SetDefaultPaymentMethodsModel {
  bool? isSuccessful;
  bool? hasContent;
  int? code;
  String? message;
  String? detailedError;
  Data? data;

  SetDefaultPaymentMethodsModel(
      {this.isSuccessful,
      this.hasContent,
      this.code,
      this.message,
      this.detailedError,
      this.data});

  SetDefaultPaymentMethodsModel.fromJson(Map<String, dynamic> json) {
    isSuccessful = json['isSuccessful'];
    hasContent = json['hasContent'];
    code = json['code'];
    message = json['message'];
    detailedError = json['detailed_error'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isSuccessful'] = isSuccessful;
    data['hasContent'] = hasContent;
    data['code'] = code;
    data['message'] = message;
    data['detailed_error'] = detailedError;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? isDefault;
  String? token;
  String? customerId;
  String? cardId;
  String? cardType;
  String? customerName;
  String? customerEmail;
  String? customerPhone;
  String? cardHolderName;
  String? cardNumber;
  String? cardExpMonth;
  String? cardExpYear;
  String? cardCvc;
  int? userId;

  Data(
      {this.id,
      this.isDefault,
      this.token,
      this.customerId,
      this.cardId,
      this.cardType,
      this.customerName,
      this.customerEmail,
      this.customerPhone,
      this.cardHolderName,
      this.cardNumber,
      this.cardExpMonth,
      this.cardExpYear,
      this.cardCvc,
      this.userId});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isDefault = json['is_default'];
    token = json['token'];
    customerId = json['customer_id'];
    cardId = json['card_id'];
    cardType = json['card_type'];
    customerName = json['customer_name'];
    customerEmail = json['customer_email'];
    customerPhone = json['customer_phone'];
    cardHolderName = json['card_holder_name'];
    cardNumber = json['card_number'];
    cardExpMonth = json['card_exp_month'];
    cardExpYear = json['card_exp_year'];
    cardCvc = json['card_cvc'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['is_default'] = isDefault;
    data['token'] = token;
    data['customer_id'] = customerId;
    data['card_id'] = cardId;
    data['card_type'] = cardType;
    data['customer_name'] = customerName;
    data['customer_email'] = customerEmail;
    data['customer_phone'] = customerPhone;
    data['card_holder_name'] = cardHolderName;
    data['card_number'] = cardNumber;
    data['card_exp_month'] = cardExpMonth;
    data['card_exp_year'] = cardExpYear;
    data['card_cvc'] = cardCvc;
    data['user_id'] = userId;
    return data;
  }
}
