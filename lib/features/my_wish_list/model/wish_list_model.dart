class WishListModel {
  String? rowId;
  int id;
  int qty;
  String name;
  int price;
  int weight;
  OptionsModel options;
  int? taxRate;
  String? instance;

  WishListModel(
      {required this.rowId,
      required this.id,
      required this.qty,
      required this.name,
      required this.price,
      required this.weight,
      required this.options,
      required this.taxRate,
      required this.instance});

  factory WishListModel.fromJson(Map<String, dynamic> json) => WishListModel(
        rowId: json['rowId'],
        id: json['id'],
        qty: json['qty'],
        name: json['name'],
        price: json['price'],
        weight: json['weight'],
        options: OptionsModel.fromJson(json['options']),
        taxRate: json['taxRate'],
        instance: json['instance'],
      );
}

class OptionsModel {
  dynamic size;
  dynamic color;
  String image;
  String imageLink;
  String discountPrice;
  String itemTag;
  String discountParcent;
  String voucher;
  int inCart;
  int cartQuantity;
  String brand;

  OptionsModel({
    required this.size,
    required this.color,
    required this.image,
    required this.imageLink,
    required this.discountPrice,
    required this.itemTag,
    required this.discountParcent,
    required this.voucher,
    required this.inCart,
    required this.cartQuantity,
    required this.brand,
  });

  factory OptionsModel.fromJson(Map<String, dynamic> json) => OptionsModel(
        size: json['size'],
        color: json['color'],
        image: json['image'],
        imageLink: json['image_link'],
        discountPrice: json['discount_price'],
        itemTag: json['item_tag'],
        discountParcent: json['discount_parcent'],
        voucher: json['voucher'],
        inCart: json['in_cart'],
        cartQuantity: json['cart_qty'],
        brand: json['brand_name'],
      );
}
