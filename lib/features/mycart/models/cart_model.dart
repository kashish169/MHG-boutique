class CartModel {
  String rowId;
  int id;

  int qty;
  String name;
  dynamic price;
  dynamic weight;
  dynamic tax;
  dynamic subtotal;
  dynamic discount;
  Options options;
  dynamic taxRate;
  dynamic instance;
  bool isDeleteItem;
  bool isLoadingQuantity;

  CartModel({
    this.tax,
    this.subtotal,
    this.discount,
    required this.rowId,
    required this.id,
    required this.qty,
    required this.name,
    required this.price,
    required this.weight,
    required this.options,
    required this.taxRate,
    required this.instance,
    this.isDeleteItem = false,
    this.isLoadingQuantity = false,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        tax: json["tax"],
        subtotal: json["subtotal"],
        discount: json["discount"],
        rowId: json["rowId"],
        id: json["id"],
        qty: json["qty"],
        name: json["name"],
        price: json["price"],
        weight: json["weight"],
        options: Options.fromJson(json["options"]),
        taxRate: json["taxRate"],
        instance: json["instance"],
      );
}

class Options {
  int variantId;
  int variantQuantity;
  dynamic brandName;
  dynamic size;
  dynamic color;
  String? image;
  String imageLink;
  dynamic discountPrice;
  String? itemTag;
  dynamic discountParcent;
  String? voucher;
  int isGiveAway;
  double? minGwpCartAmount;
  bool? isGwp;

  Options({
    required this.variantId,
    required this.variantQuantity,
    this.minGwpCartAmount,
    this.isGwp,
    this.brandName,
    this.size,
    this.color,
    this.image,
    required this.imageLink,
    this.discountPrice,
    this.itemTag,
    this.discountParcent,
    this.voucher,
    required this.isGiveAway,
  });

  factory Options.fromJson(Map<String, dynamic> json) => Options(
      variantQuantity: json['variant_quantity'],
      isGwp: json["is_gwp"],
      minGwpCartAmount: json["min_gwp_cart_amount"] == null
          ? 0
          : double.parse(json["min_gwp_cart_amount"]),
      variantId: json["variant_id"],
      brandName: json["brand_name"],
      size: json["size"],
      color: json["color"],
      image: json["image"],
      imageLink: json["image_link"],
      discountPrice: json["discount_price"].toString(),
      itemTag: json["item_tag"],
      discountParcent: json["discount_parcent"].toString(),
      voucher: json["voucher"],
      isGiveAway: json['is_giveaway_item']);
}
