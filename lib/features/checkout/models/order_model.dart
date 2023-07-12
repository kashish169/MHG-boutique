import 'dart:convert';

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  String billingName;
  String billingEmail;
  String? billingStreetAddress;
  String? billingState;
  String? billingZipcode;
  String? billingCountry;
  String shippingName;
  String? shippingEmail;
  String? shippingStreetAddress;
  String? shippingState;
  String? shippingZipcode;
  String? shippingCountry;
  String coupon;
  int redeem;
  String? paymentMethod;
  int? onlinePaymentMethodId;
  String? paymentPlatForm;
  OrderModel({
    required this.billingName,
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
    this.paymentPlatForm,
  });

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
      "payment_method": paymentMethod,
    };
    if (paymentMethod == "TAP" && paymentPlatForm != 'apple') {
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
