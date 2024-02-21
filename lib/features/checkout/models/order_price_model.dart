class OrderPriceModal {
  bool? isSuccessful;
  bool? hasContent;
  int? code;
  String? message;
  String? detailedError;
  Data? data;

  OrderPriceModal({
    this.isSuccessful,
    this.hasContent,
    this.code,
    this.message,
    this.detailedError,
    this.data,
  });

  OrderPriceModal.fromJson(Map<String, dynamic> json) {
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
  dynamic subtotal;
  dynamic tax;
  dynamic shippingCharge;
  dynamic cashOnDeliveryFees;
  String? deliveryStatusText;
  dynamic discount;
  dynamic grandTotal;
  Hearts? hearts;
  String? shippingMessage;
  Data(
      {this.subtotal,
      this.tax,
      this.shippingCharge,
      this.discount,
      this.grandTotal,
      this.deliveryStatusText,
      this.hearts,
      this.shippingMessage,
      this.cashOnDeliveryFees});

  Data.fromJson(Map<String, dynamic> json) {
    cashOnDeliveryFees = json['cash_on_delivery_fees'];
    deliveryStatusText = json['delivery_status_Text'];
    subtotal = json['subtotal'];
    tax = json['tax'];
    shippingCharge = json['shipping_charge'];
    discount = json['discount'];
    grandTotal = json['grand_total'];
    shippingMessage = json['shipping_message'];
    hearts = json["hearts"] == null ? null : Hearts.fromJson(json["hearts"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cash_on_delivery_fees'] = cashOnDeliveryFees;
    data['delivery_status_Text'] = deliveryStatusText;
    data['subtotal'] = subtotal;
    data['tax'] = tax;
    data['shipping_charge'] = shippingCharge;
    data['discount'] = discount;
    data['shipping_message'] = shippingMessage;
    data['grand_total'] = grandTotal;
    return data;
  }
}

class Hearts {
  String tierName;
  dynamic hearts;

  Hearts({required this.tierName, required this.hearts});

  factory Hearts.fromJson(Map<String, dynamic> json) => Hearts(
        tierName: json["tier_name"],
        hearts: json["hearts"],
      );
}
