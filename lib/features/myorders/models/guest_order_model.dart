// To parse this JSON data, do
//
//     final guestOrderModel = guestOrderModelFromJson(jsonString);

import 'dart:convert';



GuestsOrdersModel myOrdersModelFromJson(String str) =>
    GuestsOrdersModel.fromJson(json.decode(str));

String myOrdersModelToJson(GuestsOrdersModel data) => json.encode(data.toJson());

class GuestsOrdersModel {
  List<GuestOrderModel> orders;

  GuestsOrdersModel({
    required this.orders,
  });

  factory GuestsOrdersModel.fromJson(Map<String, dynamic> json) => GuestsOrdersModel(
    orders:
    List<GuestOrderModel>.from(json["orders"].map((x) => GuestOrderModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "orders": List<dynamic>.from(orders.map((x) => x.toJson())),
  };
}

GuestOrderModel guestOrderModelFromJson(String str) => GuestOrderModel.fromJson(json.decode(str));

String guestOrderModelToJson(GuestOrderModel data) => json.encode(data.toJson());

class GuestOrderModel {
  int id;
  dynamic externalId;
  String orderNumber;
  dynamic orderBill;
  dynamic userId;
  dynamic billingId;
  dynamic shippingId;
  String billingAddress;
  String shippingAddress;
  dynamic couponId;
  int couponAmount;
  int heartsDiscount;
  double deliveryCharge;
  double subTotal;
  double tax;
  double grandTotal;
  int isFreeDelivery;
  int isOrderSuccessful;
  int isOrderCompleted;
  String paymentMethod;
  int paymentStatus;
  int orderStatus;
  String txn;
  dynamic tapPaymentMethodId;
  dynamic appId;
  dynamic cartToken;
  dynamic checkoutId;
  dynamic checkoutToken;
  dynamic cancelledAt;
  dynamic closedAt;
  dynamic name;
  dynamic number;
  dynamic orderStatusUrl;
  int cancelRequested;
  int returnRequested;
  dynamic cancelReason;
  dynamic returnReason;
  dynamic storeId;
  dynamic deliveryAt;
  DateTime createdAt;
  DateTime updatedAt;
  List<OrderDetail> orderDetails;
  dynamic user;
  dynamic tapPaymentMethod;
  dynamic coupon;
  dynamic store;

  GuestOrderModel({
    required this.id,
    this.externalId,
    required this.orderNumber,
    this.orderBill,
    this.userId,
    this.billingId,
    this.shippingId,
    required this.billingAddress,
    required this.shippingAddress,
    this.couponId,
    required this.couponAmount,
    required this.heartsDiscount,
    required this.deliveryCharge,
    required this.subTotal,
    required this.tax,
    required this.grandTotal,
    required this.isFreeDelivery,
    required this.isOrderSuccessful,
    required this.isOrderCompleted,
    required this.paymentMethod,
    required this.paymentStatus,
    required this.orderStatus,
    required this.txn,
    this.tapPaymentMethodId,
    this.appId,
    this.cartToken,
    this.checkoutId,
    this.checkoutToken,
    this.cancelledAt,
    this.closedAt,
    this.name,
    this.number,
    this.orderStatusUrl,
    required this.cancelRequested,
    required this.returnRequested,
    this.cancelReason,
    this.returnReason,
    this.storeId,
    this.deliveryAt,
    required this.createdAt,
    required this.updatedAt,
    required this.orderDetails,
    this.user,
    this.tapPaymentMethod,
    this.coupon,
    this.store,
  });

  factory GuestOrderModel.fromJson(Map<String, dynamic> json) => GuestOrderModel(
    id: json["id"],
    externalId: json["external_id"],
    orderNumber: json["Order_Number"],
    orderBill: json["order_bill"],
    userId: json["User_Id"],
    billingId: json["Billing_Id"],
    shippingId: json["Shipping_Id"],
    billingAddress: json["billing_address"],
    shippingAddress: json["shipping_address"],
    couponId: json["Coupon_Id"],
    couponAmount: json["Coupon_Amount"],
    heartsDiscount: json["hearts_discount"],
    deliveryCharge: json["Delivery_Charge"]?.toDouble(),
    subTotal: json["Sub_Total"]?.toDouble(),
    tax: json["Tax"]?.toDouble(),
    grandTotal: json["Grand_Total"]?.toDouble(),
    isFreeDelivery: json["Is_Free_Delivery"],
    isOrderSuccessful: json["Is_Order_Successful"],
    isOrderCompleted: json["Is_Order_Completed"],
    paymentMethod: json["Payment_Method"],
    paymentStatus: json["Payment_Status"],
    orderStatus: json["Order_Status"],
    txn: json["txn"],
    tapPaymentMethodId: json["tap_payment_method_id"],
    appId: json["app_id"],
    cartToken: json["cart_token"],
    checkoutId: json["checkout_id"],
    checkoutToken: json["checkout_token"],
    cancelledAt: json["cancelled_at"],
    closedAt: json["closed_at"],
    name: json["name"],
    number: json["number"],
    orderStatusUrl: json["order_status_url"],
    cancelRequested: json["cancel_requested"],
    returnRequested: json["return_requested"],
    cancelReason: json["cancel_reason"],
    returnReason: json["return_reason"],
    storeId: json["store_id"],
    deliveryAt: json["Delivery_At"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    orderDetails: List<OrderDetail>.from(json["order_details"].map((x) => OrderDetail.fromJson(x))),
    user: json["user"],
    tapPaymentMethod: json["tap_payment_method"],
    coupon: json["coupon"],
    store: json["store"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "external_id": externalId,
    "Order_Number": orderNumber,
    "order_bill": orderBill,
    "User_Id": userId,
    "Billing_Id": billingId,
    "Shipping_Id": shippingId,
    "billing_address": billingAddress,
    "shipping_address": shippingAddress,
    "Coupon_Id": couponId,
    "Coupon_Amount": couponAmount,
    "hearts_discount": heartsDiscount,
    "Delivery_Charge": deliveryCharge,
    "Sub_Total": subTotal,
    "Tax": tax,
    "Grand_Total": grandTotal,
    "Is_Free_Delivery": isFreeDelivery,
    "Is_Order_Successful": isOrderSuccessful,
    "Is_Order_Completed": isOrderCompleted,
    "Payment_Method": paymentMethod,
    "Payment_Status": paymentStatus,
    "Order_Status": orderStatus,
    "txn": txn,
    "tap_payment_method_id": tapPaymentMethodId,
    "app_id": appId,
    "cart_token": cartToken,
    "checkout_id": checkoutId,
    "checkout_token": checkoutToken,
    "cancelled_at": cancelledAt,
    "closed_at": closedAt,
    "name": name,
    "number": number,
    "order_status_url": orderStatusUrl,
    "cancel_requested": cancelRequested,
    "return_requested": returnRequested,
    "cancel_reason": cancelReason,
    "return_reason": returnReason,
    "store_id": storeId,
    "Delivery_At": deliveryAt,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "order_details": List<dynamic>.from(orderDetails.map((x) => x.toJson())),
    "user": user,
    "tap_payment_method": tapPaymentMethod,
    "coupon": coupon,
    "store": store,
  };
}

class OrderDetail {
  int id;
  dynamic externalId;
  int orderId;
  int productId;
  int variantId;
  String sku;
  String productName;
  String variantName;
  String image;
  dynamic size;
  dynamic color;
  int price;
  int quantity;
  int totalPrice;
  DateTime createdAt;
  DateTime updatedAt;
  String imageLink;

  OrderDetail({
    required this.id,
    this.externalId,
    required this.orderId,
    required this.productId,
    required this.variantId,
    required this.sku,
    required this.productName,
    required this.variantName,
    required this.image,
    this.size,
    this.color,
    required this.price,
    required this.quantity,
    required this.totalPrice,
    required this.createdAt,
    required this.updatedAt,
    required this.imageLink,
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
    id: json["id"],
    externalId: json["external_id"],
    orderId: json["Order_Id"],
    productId: json["Product_Id"],
    variantId: json["Variant_Id"],
    sku: json["sku"],
    productName: json["Product_Name"],
    variantName: json["Variant_Name"],
    image: json["Image"],
    size: json["Size"],
    color: json["Color"],
    price: json["Price"],
    quantity: json["Quantity"],
    totalPrice: json["Total_Price"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    imageLink: json["image_link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "external_id": externalId,
    "Order_Id": orderId,
    "Product_Id": productId,
    "Variant_Id": variantId,
    "sku": sku,
    "Product_Name": productName,
    "Variant_Name": variantName,
    "Image": image,
    "Size": size,
    "Color": color,
    "Price": price,
    "Quantity": quantity,
    "Total_Price": totalPrice,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "image_link": imageLink,
  };
}
