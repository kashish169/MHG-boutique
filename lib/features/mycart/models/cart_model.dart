class CartModel {
  String rowId;
  int id;
  int qty;
  String name;
  dynamic price;
  dynamic weight;
  Options options;
  dynamic taxRate;
  dynamic instance;
  bool isDeleteItem;
  bool isLoadingQuantity;

  CartModel({
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
  dynamic brandName;
  dynamic size;
  dynamic color;
  String? image;
  String imageLink;
  dynamic discountPrice;
  String? itemTag;
  dynamic discountParcent;
  String? voucher;

  Options({
    this.brandName,
    this.size,
    this.color,
    this.image,
    required this.imageLink,
    this.discountPrice,
    this.itemTag,
    this.discountParcent,
    this.voucher,
  });

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        brandName: json["brand_name"],
        size: json["size"],
        color: json["color"],
        image: json["image"],
        imageLink: json["image_link"],
        discountPrice: json["discount_price"].toString(),
        itemTag: json["item_tag"],
        discountParcent: json["discount_parcent"].toString(),
        voucher: json["voucher"],
      );
}
