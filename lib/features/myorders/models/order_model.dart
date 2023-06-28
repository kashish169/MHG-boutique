// To parse this JSON data, do
//
//     final myOrdersModel = myOrdersModelFromJson(jsonString);

import 'dart:convert';

MyOrdersModel myOrdersModelFromJson(String str) =>
    MyOrdersModel.fromJson(json.decode(str));

String myOrdersModelToJson(MyOrdersModel data) => json.encode(data.toJson());

class MyOrdersModel {
  List<MyOrder> orders;

  MyOrdersModel({
    required this.orders,
  });

  factory MyOrdersModel.fromJson(Map<String, dynamic> json) => MyOrdersModel(
        orders:
            List<MyOrder>.from(json["orders"].map((x) => MyOrder.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "orders": List<dynamic>.from(orders.map((x) => x.toJson())),
      };
}

class MyOrder {
  int id;
  String orderNumber;
  dynamic orderBill;
  int userId;
  dynamic billingId;
  dynamic shippingId;
  String billingAddress;
  String shippingAddress;
  dynamic couponId;
  String couponAmount;
  String heartsDiscount;
  String deliveryCharge;
  String subTotal;
  String tax;
  String grandTotal;
  int isFreeDelivery;
  int isOrderSuccessful;
  int isOrderCompleted;
  String paymentMethod;
  int paymentStatus;
  int orderStatus;
  String txn;
  dynamic storeId;
  dynamic deliveryAt;
  DateTime createdAt;
  DateTime updatedAt;
  List<OrderDetail> orderDetails;
  User user;
  dynamic coupon;
  dynamic store;

  MyOrder({
    required this.id,
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
    this.storeId,
    this.deliveryAt,
    required this.createdAt,
    required this.updatedAt,
    required this.orderDetails,
    required this.user,
    this.coupon,
    this.store,
  });

  factory MyOrder.fromJson(Map<String, dynamic> json) => MyOrder(
        id: json["id"],
        orderNumber: json["Order_Number"],
        orderBill: json["order_bill"],
        userId: json["User_Id"],
        billingId: json["Billing_Id"],
        shippingId: json["Shipping_Id"],
        billingAddress: json["billing_address"],
        shippingAddress: json["shipping_address"],
        couponId: json["Coupon_Id"],
        couponAmount: json["Coupon_Amount"].toString(),
        heartsDiscount: json["hearts_discount"].toString(),
        deliveryCharge: json["Delivery_Charge"].toString(),
        subTotal: json["Sub_Total"].toString(),
        tax: json["Tax"].toString(),
        grandTotal: json["Grand_Total"].toString(),
        isFreeDelivery: json["Is_Free_Delivery"],
        isOrderSuccessful: json["Is_Order_Successful"],
        isOrderCompleted: json["Is_Order_Completed"],
        paymentMethod: json["Payment_Method"],
        paymentStatus: json["Payment_Status"],
        orderStatus: json["Order_Status"],
        txn: json["txn"],
        storeId: json["store_id"],
        deliveryAt: json["Delivery_At"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        orderDetails: List<OrderDetail>.from(
            json["order_details"].map((x) => OrderDetail.fromJson(x))),
        user: User.fromJson(json["user"]),
        coupon: json["coupon"],
        store: json["store"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
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
        "store_id": storeId,
        "Delivery_At": deliveryAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "order_details":
            List<dynamic>.from(orderDetails.map((x) => x.toJson())),
        "user": user.toJson(),
        "coupon": coupon,
        "store": store,
      };
}

class OrderDetail {
  int id;
  int orderId;
  int productId;
  String productName;
  String image;
  dynamic size;
  dynamic color;
  String price;
  String quantity;
  String totalPrice;
  DateTime createdAt;
  DateTime updatedAt;
  String imageLink;

  OrderDetail({
    required this.id,
    required this.orderId,
    required this.productId,
    required this.productName,
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
        orderId: json["Order_Id"],
        productId: json["Product_Id"],
        productName: json["Product_Name"],
        image: json["Image"],
        size: json["Size"],
        color: json["Color"],
        price: json["Price"].toString(),
        quantity: json["Quantity"].toString(),
        totalPrice: json["Total_Price"].toString(),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imageLink: json["image_link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Order_Id": orderId,
        "Product_Id": productId,
        "Product_Name": productName,
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

class User {
  int id;
  dynamic externalId;
  dynamic qrCode;
  String name;
  dynamic slug;
  String email;
  dynamic accountType;
  dynamic googleId;
  dynamic facebookId;
  dynamic image;
  dynamic number;
  dynamic gender;
  dynamic dob;
  dynamic streetAddress;
  dynamic state;
  dynamic zipCode;
  dynamic about;
  int isAdmin;
  int status;
  dynamic countryName;
  dynamic countryId;
  dynamic amountSpent;
  dynamic hearts;
  dynamic referalCode;
  dynamic userReferalId;
  dynamic tierId;
  dynamic storeId;
  dynamic countryLoyaltyTierId;
  dynamic emailVerifiedAt;
  dynamic notifyMe;
  dynamic personalizedAds;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic qrCodeLink;
  dynamic imageLink;
  dynamic invitationLink;

  User({
    required this.id,
    this.externalId,
    required this.qrCode,
    required this.name,
    required this.slug,
    required this.email,
    required this.accountType,
    this.googleId,
    this.facebookId,
    this.image,
    required this.number,
    this.gender,
    this.dob,
    required this.streetAddress,
    required this.state,
    required this.zipCode,
    this.about,
    required this.isAdmin,
    required this.status,
    required this.countryName,
    required this.countryId,
    required this.amountSpent,
    required this.hearts,
    this.referalCode,
    this.userReferalId,
    required this.tierId,
    this.storeId,
    required this.countryLoyaltyTierId,
    this.emailVerifiedAt,
    required this.notifyMe,
    required this.personalizedAds,
    required this.createdAt,
    required this.updatedAt,
    required this.qrCodeLink,
    required this.imageLink,
    required this.invitationLink,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        externalId: json["external_id"],
        qrCode: json["qr_code"],
        name: json["name"],
        slug: json["slug"],
        email: json["email"],
        accountType: json["account_type"],
        googleId: json["google_id"],
        facebookId: json["facebook_id"],
        image: json["image"],
        number: json["Number"],
        gender: json["Gender"],
        dob: json["DOB"],
        streetAddress: json["street_address"],
        state: json["state"],
        zipCode: json["zip_code"],
        about: json["About"],
        isAdmin: json["is_admin"],
        status: json["status"],
        countryName: json["country_name"],
        countryId: json["country_id"],
        amountSpent: json["amount_spent"],
        hearts: json["hearts"].toString(),
        referalCode: json["referal_code"],
        userReferalId: json["user_referal_id"],
        tierId: json["tier_id"],
        storeId: json["store_id"],
        countryLoyaltyTierId: json["country_loyalty_tier_id"],
        emailVerifiedAt: json["email_verified_at"],
        notifyMe: json["notify_me"],
        personalizedAds: json["personalized_ads"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        qrCodeLink: json["qr_code_link"],
        imageLink: json["image_link"],
        invitationLink: json["invitation_link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "external_id": externalId,
        "qr_code": qrCode,
        "name": name,
        "slug": slug,
        "email": email,
        "account_type": accountType,
        "google_id": googleId,
        "facebook_id": facebookId,
        "image": image,
        "Number": number,
        "Gender": gender,
        "DOB": dob,
        "street_address": streetAddress,
        "state": state,
        "zip_code": zipCode,
        "About": about,
        "is_admin": isAdmin,
        "status": status,
        "country_name": countryName,
        "country_id": countryId,
        "amount_spent": amountSpent,
        "hearts": hearts,
        "referal_code": referalCode,
        "user_referal_id": userReferalId,
        "tier_id": tierId,
        "store_id": storeId,
        "country_loyalty_tier_id": countryLoyaltyTierId,
        "email_verified_at": emailVerifiedAt,
        "notify_me": notifyMe,
        "personalized_ads": personalizedAds,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "qr_code_link": qrCodeLink,
        "image_link": imageLink,
        "invitation_link": invitationLink,
      };
}
