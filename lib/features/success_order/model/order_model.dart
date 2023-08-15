// import 'dart:convert';

// import 'package:mhg/features/success_order/model/shipning_model.dart';
// import 'package:mhg/features/success_order/model/user_model.dart';

// import 'order_details_model.dart';

// class SuccessOrderModel {
//   int id;
//   dynamic externalId;
//   String orderNumber;
//   dynamic orderBill;
//   int userId;
//   dynamic billingId;
//   dynamic shippingId;
//   ShippingModel billingAddress;
//   ShippingModel shippingAddress;
//   dynamic couponId;
//   dynamic couponAmount;
//   dynamic heartsDiscount;
//   dynamic deliveryCharge;
//   dynamic subTotal;
//   dynamic tax;
//   dynamic grandTotal;
//   int isFreeDelivery;
//   int isOrderSuccessful;
//   int isOrderCompleted;
//   String paymentMethod;
//   int? paymentStatus;
//   int? orderStatus;
//   dynamic txn;
//   dynamic appId;
//   dynamic cartToken;
//   dynamic checkoutId;
//   dynamic checkoutToken;
//   dynamic cancelledAt;
//   dynamic closedAt;
//   dynamic name;
//   dynamic number;
//   dynamic orderStatusUrl;
//   int? cancelRequested;
//   int? returnRequested;
//   dynamic cancelReason;
//   dynamic returnReason;
//   dynamic storeId;
//   dynamic deliveryAt;
//   DateTime createdAt;
//   DateTime updatedAt;
//   dynamic coupon;
//   dynamic store;
//   UserModel userModel;
//   List<OrderDetailsModel> orders;
//   SuccessOrderModel(
//       {required this.id,
//       this.externalId,
//       required this.orderNumber,
//       this.orderBill,
//       required this.userId,
//       this.billingId,
//       this.shippingId,
//       required this.billingAddress,
//       required this.shippingAddress,
//       this.couponId,
//       required this.couponAmount,
//       required this.heartsDiscount,
//       required this.deliveryCharge,
//       required this.subTotal,
//       required this.tax,
//       required this.grandTotal,
//       required this.isFreeDelivery,
//       required this.isOrderSuccessful,
//       required this.isOrderCompleted,
//       required this.paymentMethod,
//       required this.paymentStatus,
//       required this.orderStatus,
//       required this.txn,
//       this.appId,
//       this.cartToken,
//       this.checkoutId,
//       this.checkoutToken,
//       this.cancelledAt,
//       this.closedAt,
//       this.name,
//       this.number,
//       this.orderStatusUrl,
//       required this.cancelRequested,
//       required this.returnRequested,
//       this.cancelReason,
//       this.returnReason,
//       this.storeId,
//       this.deliveryAt,
//       required this.createdAt,
//       required this.updatedAt,
//       required this.orders,
//       required this.userModel,
//       this.coupon,
//       this.store});

//   factory SuccessOrderModel.fromJson(Map<String, dynamic> jsons) =>
//       SuccessOrderModel(
//         id: jsons['id'],
//         externalId: jsons['external_id'],
//         orderNumber: jsons['Order_Number'],
//         orderBill: jsons['order_bill'],
//         userId: jsons['User_Id'],
//         billingId: jsons['Billing_Id'],
//         shippingId: jsons['Shipping_Id'],
//         billingAddress:
//             ShippingModel.fromJson(json.decode(jsons['billing_address'])),
//         shippingAddress:
//             ShippingModel.fromJson(json.decode(jsons['shipping_address'])),
//         couponId: jsons['Coupon_Id'],
//         couponAmount: jsons['Coupon_Amount'],
//         heartsDiscount: jsons['hearts_discount'],
//         deliveryCharge: jsons['Delivery_Charge'],
//         subTotal: jsons['Sub_Total'],
//         tax: jsons['Tax'],
//         grandTotal: jsons['Grand_Total'],
//         isFreeDelivery: jsons['Is_Free_Delivery'],
//         isOrderSuccessful: jsons['Is_Order_Successful'],
//         isOrderCompleted: jsons['Is_Order_Completed'],
//         paymentMethod: jsons['Payment_Method'],
//         paymentStatus: jsons['Payment_Status'],
//         orderStatus: jsons['Order_Status'],
//         txn: jsons['txn'],
//         appId: jsons['app_id'],
//         cartToken: jsons['cart_token'],
//         checkoutId: jsons['checkout_id'],
//         checkoutToken: jsons['checkout_token'],
//         cancelledAt: jsons['cancelled_at'],
//         closedAt: jsons['closed_at'],
//         name: jsons['name'],
//         number: jsons['number'],
//         orderStatusUrl: jsons['order_status_url'],
//         cancelRequested: jsons['cancel_requested'],
//         returnRequested: jsons['return_requested'],
//         cancelReason: jsons['cancel_reason'],
//         returnReason: jsons['return_reason'],
//         storeId: jsons['store_id'],
//         deliveryAt: jsons['Delivery_At'],
//         createdAt: DateTime.parse(jsons['created_at']),
//         updatedAt: DateTime.parse(jsons['updated_at']),
//         orders: List<OrderDetailsModel>.from(
//             jsons["order_details"].map((x) => OrderDetailsModel.fromJson(x))),
//         userModel: UserModel.fromJson(jsons['user']),
//         coupon: jsons['coupon'],
//         store: jsons['store'],
//       );
// }
