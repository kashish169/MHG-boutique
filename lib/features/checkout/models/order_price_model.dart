class OrderPriceModal {
  bool? isSuccessful;
  bool? hasContent;
  int? code;
  String? message;
  String? detailedError;
  Data? data;

  OrderPriceModal(
      {this.isSuccessful,
      this.hasContent,
      this.code,
      this.message,
      this.detailedError,
      this.data});

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
  dynamic discount;
  dynamic grandTotal;
  Hearts? hearts;

  Data(
      {this.subtotal,
      this.tax,
      this.shippingCharge,
      this.discount,
      this.grandTotal,
      this.hearts});

  Data.fromJson(Map<String, dynamic> json) {
    subtotal = json['subtotal'];
    tax = json['tax'];
    shippingCharge = json['shipping_charge'];
    discount = json['discount'];
    grandTotal = json['grand_total'];
    hearts = Hearts.fromJson(json["hearts"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['subtotal'] = subtotal;
    data['tax'] = tax;
    data['shipping_charge'] = shippingCharge;
    data['discount'] = discount;
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
