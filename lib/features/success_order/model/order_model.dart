import 'package:mhg/features/success_order/model/user_model.dart';

import 'order_details_model.dart';

class SuccessOrderModel {
  dynamic id;
  dynamic externalId;
  dynamic orderNumber;
  dynamic orderBill;
  dynamic userId;
  dynamic billingId;
  dynamic shippingId;
  dynamic billingAddress;
  dynamic shippingAddress;
  dynamic couponId;
  dynamic couponAmount;
  dynamic heartsDiscount;
  dynamic deliveryCharge;
  dynamic subTotal;
  dynamic tax;
  dynamic grandTotal;
  dynamic isFreeDelivery;
  dynamic isOrderSuccessful;
  dynamic isOrderCompleted;
  dynamic paymentMethod;
  dynamic paymentStatus;
  dynamic orderStatus;
  dynamic txn;
  dynamic appId;
  dynamic cartToken;
  dynamic checkoutId;
  dynamic checkoutToken;
  dynamic cancelledAt;
  dynamic closedAt;
  dynamic name;
  dynamic number;
  dynamic orderStatusUrl;
  dynamic cancelRequested;
  dynamic returnRequested;
  dynamic cancelReason;
  dynamic returnReason;
  dynamic storeId;
  dynamic deliveryAt;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic coupon;
  dynamic store;
  UserModel userModel;
  List<OrderDetailsModel> orders;
  SuccessOrderModel(
      {required this.id,
      this.externalId,
      required this.orderNumber,
      this.orderBill,
      required this.userId,
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
      required this.orders,
      required this.userModel,
      this.coupon,
      this.store});

  factory SuccessOrderModel.fromJson(Map<String, dynamic> json) =>
      SuccessOrderModel(
        id: json['id'],
        externalId: json['external_id'],
        orderNumber: json['Order_Number'],
        orderBill: json['order_bill'],
        userId: json['User_Id'],
        billingId: json['Billing_Id'],
        shippingId: json['Shipping_Id'],
        billingAddress: json['billing_address'],
        shippingAddress: json['shipping_address'],
        couponId: json['Coupon_Id'],
        couponAmount: json['Coupon_Amount'],
        heartsDiscount: json['hearts_discount'],
        deliveryCharge: json['Delivery_Charge'],
        subTotal: json['Sub_Total'],
        tax: json['Tax'],
        grandTotal: json['Grand_Total'],
        isFreeDelivery: json['Is_Free_Delivery'],
        isOrderSuccessful: json['Is_Order_Successful'],
        isOrderCompleted: json['Is_Order_Completed'],
        paymentMethod: json['Payment_Method'],
        paymentStatus: json['Payment_Status'],
        orderStatus: json['Order_Status'],
        txn: json['txn'],
        appId: json['app_id'],
        cartToken: json['cart_token'],
        checkoutId: json['checkout_id'],
        checkoutToken: json['checkout_token'],
        cancelledAt: json['cancelled_at'],
        closedAt: json['closed_at'],
        name: json['name'],
        number: json['number'],
        orderStatusUrl: json['order_status_url'],
        cancelRequested: json['cancel_requested'],
        returnRequested: json['return_requested'],
        cancelReason: json['cancel_reason'],
        returnReason: json['return_reason'],
        storeId: json['store_id'],
        deliveryAt: json['Delivery_At'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        orders: List<OrderDetailsModel>.from(
            json["order_details"].map((x) => OrderDetailsModel.fromJson(x))),
        userModel: UserModel.fromJson(json['user']),
        coupon: json['coupon'],
        store: json['store'],
      );
}
