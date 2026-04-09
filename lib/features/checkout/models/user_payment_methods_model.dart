class UserPaymentMethodsModel {
  int id;
  dynamic isDefault;
  dynamic token;
  dynamic customerId;
  dynamic cardId;
  dynamic cardType;
  dynamic customerName;
  dynamic customerEmail;
  dynamic customerPhone;
  dynamic cardHolderName;
  dynamic cardNumber;
  dynamic cardExpMonth;
  dynamic cardExpYear;
  dynamic cardCvc;
  dynamic userId;

  UserPaymentMethodsModel({
    required this.id,
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
    this.userId,
  });

  factory UserPaymentMethodsModel.fromJson(Map<String, dynamic> json) =>
      UserPaymentMethodsModel(
        id: json["id"],
        isDefault: json["is_default"],
        token: json["token"],
        customerId: json["customer_id"],
        cardId: json["card_id"],
        cardType: json["card_type"],
        customerName: json["customer_name"],
        customerEmail: json["customer_email"],
        customerPhone: json["customer_phone"],
        cardHolderName: json["card_holder_name"],
        cardNumber: json["card_number"],
        cardExpMonth: json["card_exp_month"],
        cardExpYear: json["card_exp_year"],
        cardCvc: json["card_cvc"],
        userId: json["user_id"],
      );
}
