class CreateOrderModal {
  bool? isSuccessful;
  bool? hasContent;
  int? code;
  String? message;
  String? detailedError;
  Data? data;

  CreateOrderModal(
      {this.isSuccessful,
      this.hasContent,
      this.code,
      this.message,
      this.detailedError,
      this.data});

  CreateOrderModal.fromJson(Map<String, dynamic> json) {
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
  String? orderNumber;
  int? orderBill;
  int? userId;
  int? billingId;
  int? shippingId;
  String? billingAddress;
  String? shippingAddress;
  int? couponId;
  String? couponAmount;
  String? heartsDiscount;
  String? deliveryCharge;
  String? subTotal;
  String? tax;
  String? grandTotal;
  int? isFreeDelivery;
  int? isOrderSuccessful;
  int? isOrderCompleted;
  String? paymentMethod;
  int? paymentStatus;
  int? orderStatus;
  String? txn;
  int? storeId;
  String? deliveryAt;
  String? createdAt;
  String? updatedAt;
  List<OrderDetails>? orderDetails;
  User? user;
  Coupon? coupon;
  int? store;

  Data(
      {this.id,
      this.orderNumber,
      this.orderBill,
      this.userId,
      this.billingId,
      this.shippingId,
      this.billingAddress,
      this.shippingAddress,
      this.couponId,
      this.couponAmount,
      this.heartsDiscount,
      this.deliveryCharge,
      this.subTotal,
      this.tax,
      this.grandTotal,
      this.isFreeDelivery,
      this.isOrderSuccessful,
      this.isOrderCompleted,
      this.paymentMethod,
      this.paymentStatus,
      this.orderStatus,
      this.txn,
      this.storeId,
      this.deliveryAt,
      this.createdAt,
      this.updatedAt,
      this.orderDetails,
      this.user,
      this.coupon,
      this.store});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderNumber = json['Order_Number'];
    orderBill = json['order_bill'];
    userId = json['User_Id'];
    billingId = json['Billing_Id'];
    shippingId = json['Shipping_Id'];
    billingAddress = json['billing_address'];
    shippingAddress = json['shipping_address'];
    couponId = json['Coupon_Id'];
    couponAmount = json['Coupon_Amount'];
    heartsDiscount = json['hearts_discount'];
    deliveryCharge = json['Delivery_Charge'];
    subTotal = json['Sub_Total'];
    tax = json['Tax'];
    grandTotal = json['Grand_Total'];
    isFreeDelivery = json['Is_Free_Delivery'];
    isOrderSuccessful = json['Is_Order_Successful'];
    isOrderCompleted = json['Is_Order_Completed'];
    paymentMethod = json['Payment_Method'];
    paymentStatus = json['Payment_Status'];
    orderStatus = json['Order_Status'];
    txn = json['txn'];
    storeId = json['store_id'];
    deliveryAt = json['Delivery_At'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['order_details'] != null) {
      orderDetails = <OrderDetails>[];
      json['order_details'].forEach((v) {
        orderDetails!.add(OrderDetails.fromJson(v));
      });
    }
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    coupon = json['coupon'] != null ? Coupon.fromJson(json['coupon']) : null;
    store = json['store'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Order_Number'] = orderNumber;
    data['order_bill'] = orderBill;
    data['User_Id'] = userId;
    data['Billing_Id'] = billingId;
    data['Shipping_Id'] = shippingId;
    data['billing_address'] = billingAddress;
    data['shipping_address'] = shippingAddress;
    data['Coupon_Id'] = couponId;
    data['Coupon_Amount'] = couponAmount;
    data['hearts_discount'] = heartsDiscount;
    data['Delivery_Charge'] = deliveryCharge;
    data['Sub_Total'] = subTotal;
    data['Tax'] = tax;
    data['Grand_Total'] = grandTotal;
    data['Is_Free_Delivery'] = isFreeDelivery;
    data['Is_Order_Successful'] = isOrderSuccessful;
    data['Is_Order_Completed'] = isOrderCompleted;
    data['Payment_Method'] = paymentMethod;
    data['Payment_Status'] = paymentStatus;
    data['Order_Status'] = orderStatus;
    data['txn'] = txn;
    data['store_id'] = storeId;
    data['Delivery_At'] = deliveryAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (orderDetails != null) {
      data['order_details'] = orderDetails!.map((v) => v.toJson()).toList();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (coupon != null) {
      data['coupon'] = coupon!.toJson();
    }
    data['store'] = store;
    return data;
  }
}

class OrderDetails {
  int? id;
  int? orderId;
  int? productId;
  String? productName;
  String? image;
  String? size;
  String? color;
  String? price;
  String? quantity;
  String? totalPrice;
  String? createdAt;
  String? updatedAt;
  String? imageLink;

  OrderDetails(
      {this.id,
      this.orderId,
      this.productId,
      this.productName,
      this.image,
      this.size,
      this.color,
      this.price,
      this.quantity,
      this.totalPrice,
      this.createdAt,
      this.updatedAt,
      this.imageLink});

  OrderDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['Order_Id'];
    productId = json['Product_Id'];
    productName = json['Product_Name'];
    image = json['Image'];
    size = json['Size'];
    color = json['Color'];
    price = json['Price'];
    quantity = json['Quantity'];
    totalPrice = json['Total_Price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageLink = json['image_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['Order_Id'] = orderId;
    data['Product_Id'] = productId;
    data['Product_Name'] = productName;
    data['Image'] = image;
    data['Size'] = size;
    data['Color'] = color;
    data['Price'] = price;
    data['Quantity'] = quantity;
    data['Total_Price'] = totalPrice;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image_link'] = imageLink;
    return data;
  }
}

class User {
  int? id;
  int? externalId;
  String? qrCode;
  String? name;
  String? slug;
  String? email;
  String? accountType;
  int? googleId;
  int? facebookId;
  String? image;
  String? number;
  String? gender;
  String? dOB;
  String? streetAddress;
  String? state;
  String? zipCode;
  String? about;
  int? isAdmin;
  int? status;
  String? countryName;
  int? countryId;
  String? amountSpent;
  String? hearts;
  int? referalCode;
  int? userReferalId;
  int? tierId;
  int? storeId;
  int? countryLoyaltyTierId;
  String? emailVerifiedAt;
  int? notifyMe;
  int? personalizedAds;
  String? createdAt;
  String? updatedAt;
  String? qrCodeLink;
  String? imageLink;
  String? invitationLink;

  User(
      {this.id,
      this.externalId,
      this.qrCode,
      this.name,
      this.slug,
      this.email,
      this.accountType,
      this.googleId,
      this.facebookId,
      this.image,
      this.number,
      this.gender,
      this.dOB,
      this.streetAddress,
      this.state,
      this.zipCode,
      this.about,
      this.isAdmin,
      this.status,
      this.countryName,
      this.countryId,
      this.amountSpent,
      this.hearts,
      this.referalCode,
      this.userReferalId,
      this.tierId,
      this.storeId,
      this.countryLoyaltyTierId,
      this.emailVerifiedAt,
      this.notifyMe,
      this.personalizedAds,
      this.createdAt,
      this.updatedAt,
      this.qrCodeLink,
      this.imageLink,
      this.invitationLink});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    externalId = json['external_id'];
    qrCode = json['qr_code'];
    name = json['name'];
    slug = json['slug'];
    email = json['email'];
    accountType = json['account_type'];
    googleId = json['google_id'];
    facebookId = json['facebook_id'];
    image = json['image'];
    number = json['Number'];
    gender = json['Gender'];
    dOB = json['DOB'];
    streetAddress = json['street_address'];
    state = json['state'];
    zipCode = json['zip_code'];
    about = json['About'];
    isAdmin = json['is_admin'];
    status = json['status'];
    countryName = json['country_name'];
    countryId = json['country_id'];
    amountSpent = json['amount_spent'];
    hearts = json['hearts'];
    referalCode = json['referal_code'];
    userReferalId = json['user_referal_id'];
    tierId = json['tier_id'];
    storeId = json['store_id'];
    countryLoyaltyTierId = json['country_loyalty_tier_id'];
    emailVerifiedAt = json['email_verified_at'];
    notifyMe = json['notify_me'];
    personalizedAds = json['personalized_ads'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    qrCodeLink = json['qr_code_link'];
    imageLink = json['image_link'];
    invitationLink = json['invitation_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['external_id'] = externalId;
    data['qr_code'] = qrCode;
    data['name'] = name;
    data['slug'] = slug;
    data['email'] = email;
    data['account_type'] = accountType;
    data['google_id'] = googleId;
    data['facebook_id'] = facebookId;
    data['image'] = image;
    data['Number'] = number;
    data['Gender'] = gender;
    data['DOB'] = dOB;
    data['street_address'] = streetAddress;
    data['state'] = state;
    data['zip_code'] = zipCode;
    data['About'] = about;
    data['is_admin'] = isAdmin;
    data['status'] = status;
    data['country_name'] = countryName;
    data['country_id'] = countryId;
    data['amount_spent'] = amountSpent;
    data['hearts'] = hearts;
    data['referal_code'] = referalCode;
    data['user_referal_id'] = userReferalId;
    data['tier_id'] = tierId;
    data['store_id'] = storeId;
    data['country_loyalty_tier_id'] = countryLoyaltyTierId;
    data['email_verified_at'] = emailVerifiedAt;
    data['notify_me'] = notifyMe;
    data['personalized_ads'] = personalizedAds;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['qr_code_link'] = qrCodeLink;
    data['image_link'] = imageLink;
    data['invitation_link'] = invitationLink;
    return data;
  }
}

class Coupon {
  int? id;
  String? couponCode;
  int? amount;
  int? minExpenses;
  String? expireDate;
  String? status;
  String? createdAt;
  String? updatedAt;

  Coupon(
      {this.id,
      this.couponCode,
      this.amount,
      this.minExpenses,
      this.expireDate,
      this.status,
      this.createdAt,
      this.updatedAt});

  Coupon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    couponCode = json['CouponCode'];
    amount = json['Amount'];
    minExpenses = json['Min_Expenses'];
    expireDate = json['ExpireDate'];
    status = json['Status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['CouponCode'] = couponCode;
    data['Amount'] = amount;
    data['Min_Expenses'] = minExpenses;
    data['ExpireDate'] = expireDate;
    data['Status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
