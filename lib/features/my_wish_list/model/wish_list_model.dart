class WishListModel {
  String? rowId;
  int id;
  int qty;
  dynamic averageRate;
  dynamic pts;
  String name;
  dynamic price;
  dynamic weight;
  OptionsModel options;
  dynamic discount;
  dynamic tax;
  dynamic subtotal;
  bool isAddToBag;
  bool isDeleteItem;
  bool isLoadingDelete;

  WishListModel({
    this.averageRate,
    this.pts,
    required this.rowId,
    required this.id,
    required this.qty,
    required this.name,
    required this.price,
    required this.weight,
    required this.options,
    required this.discount,
    required this.tax,
    required this.subtotal,
    this.isDeleteItem = false,
    this.isLoadingDelete = false,
    this.isAddToBag = false,
  });

  factory WishListModel.fromJson(Map<String, dynamic> json) => WishListModel(
        averageRate: json["avarage_rate"] != null
            ? json["avarage_rate"].toString()
            : '0',
        pts: json["pts"],
        rowId: json['rowId'],
        id: json['id'],
        qty: json['qty'],
        name: json['name'],
        price: json['price'],
        weight: json['weight'],
        options: OptionsModel.fromJson(json['options']),
        discount: json['discount'],
        tax: json['tax'],
        subtotal: json['subtotal'],
      );
}

class OptionsModel {
  dynamic size;
  dynamic color;
  String image;
  String imageLink;
  dynamic discountPrice;
  dynamic itemTag;
  dynamic discountParcent;
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
        discountPrice: json['discount_price'].toString(),
        itemTag: json['item_tag'],
        discountParcent: json['discount_parcent'].toString(),
        voucher: json['voucher'],
        inCart: json['in_cart'],
        cartQuantity: json['cart_qty'],
        brand: json['brand_name'],
      );
}
