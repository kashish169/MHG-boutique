class CartModel {
  String rowId;
  int id;
  int qty;
  String name;
  dynamic price;
  int weight;
  Options options;
  int taxRate;
  String instance;
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
  dynamic size;
  dynamic color;
  String? image;
  String imageLink;
  String? discountPrice;
  String? itemTag;
  String? discountParcent;
  String? voucher;

  Options({
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
        size: json["size"],
        color: json["color"],
        image: json["image"],
        imageLink: json["image_link"],
        discountPrice: json["discount_price"],
        itemTag: json["item_tag"],
        discountParcent: json["discount_parcent"],
        voucher: json["voucher"],
      );
}
