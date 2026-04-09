import 'dart:convert';

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  String billingName;
  String billingEmail;
  String? billingStreetAddress;
  String? billingState;
  String? billingZipcode;
  String? billingCountry;
  String? shippingName;
  String? shippingEmail;
  String? shippingStreetAddress;
  String? shippingState;
  String? shippingZipcode;
  String? shippingCountry;
  String coupon;
  int redeem;
  double? redeemAmount;
  String? paymentMethod;
  int? onlinePaymentMethodId;
  String? paymentPlatForm;
  String? shippingPhoneNumber;
  String? billingPhoneNumber;
  String? appleToken;
  String? ephemeralPublicKey;
  String? publicKeyHash;
  String? transactionId;
  String? signature;
  List? signatures;
  String? signedMessage;
  String? signedKey;

  OrderModel(
      {required this.billingName,
      required this.billingEmail,
      required this.billingStreetAddress,
      required this.billingState,
      required this.billingZipcode,
      required this.billingCountry,
      required this.shippingName,
      required this.shippingEmail,
      required this.shippingStreetAddress,
      required this.shippingState,
      required this.shippingZipcode,
      required this.shippingCountry,
      required this.coupon,
      required this.redeem,
      required this.paymentMethod,
      required this.onlinePaymentMethodId,
      required this.shippingPhoneNumber,
      required this.billingPhoneNumber,
      this.redeemAmount,
      this.paymentPlatForm,
      this.appleToken,
      this.ephemeralPublicKey,
      this.publicKeyHash,
      this.transactionId,
      this.signature,
      this.signedMessage,
      this.signatures,
      this.signedKey});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> body = {
      "billing_name": billingName,
      "billing_email": billingEmail,
      "billing_street_address": billingStreetAddress,
      "billing_state": billingState,
      "billing_zipcode": billingZipcode,
      "billing_country": billingCountry,
      "shipping_name": shippingName,
      "shipping_email": shippingEmail,
      "shipping_street_address": shippingStreetAddress,
      "shipping_state": shippingState,
      "shipping_zipcode": shippingZipcode,
      "shipping_country": shippingCountry,
      "redeem": redeem,
      "redeem_amount": redeemAmount,
      "payment_method": paymentMethod,
      'shipping_phone_number': shippingPhoneNumber,
      'billing_phone_number': billingPhoneNumber,
    };
    if (paymentPlatForm == 'apple') {
      body.putIfAbsent(
        "payment_platform_data",
        () => {
          "token": appleToken,
          "ephemeral_public_key": ephemeralPublicKey,
          "public_key_hash": publicKeyHash,
          "transaction_id": transactionId,
          "signature": signature,
        },
      );
    }
    if (paymentPlatForm == 'google') {
      body.putIfAbsent(
        "payment_platform_data",
        () => {
          "signed_message": signedMessage,
          "signatures": signatures,
          "signed_key": signedKey,
          "signature": signature,
        },
      );
    }
    if (paymentMethod == "TAP" &&
        paymentPlatForm != 'apple' &&
        paymentPlatForm != 'google') {
      body.putIfAbsent(
        "online_payment_method_id",
        () => onlinePaymentMethodId,
      );
    }
    if (paymentMethod == 'TAP') {
      body.putIfAbsent('payment_platform', () => paymentPlatForm);
    }
    if (coupon.isNotEmpty) {
      body.putIfAbsent(
        "coupon",
        () => coupon,
      );
    }
    return body;
  }
}
