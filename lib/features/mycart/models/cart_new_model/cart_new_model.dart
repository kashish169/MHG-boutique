import 'options.dart';

class CartModel {
  String? rowId;
  int? id;
  String? name;
  int? qty;
  int? price;
  int? weight;
  Options? options;
  int? discount;
  double? tax;
  int? subtotal;

  CartModel({
    this.rowId,
    this.id,
    this.name,
    this.qty,
    this.price,
    this.weight,
    this.options,
    this.discount,
    this.tax,
    this.subtotal,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        rowId: json['rowId'] as String?,
        id: json['id'] as int?,
        name: json['name'] as String?,
        qty: json['qty'] as int?,
        price: json['price'] as int?,
        weight: json['weight'] as int?,
        options: json['options'] == null
            ? null
            : Options.fromJson(json['options'] as Map<String, dynamic>),
        discount: json['discount'] as int?,
        tax: (json['tax'] as num?)?.toDouble(),
        subtotal: json['subtotal'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'rowId': rowId,
        'id': id,
        'name': name,
        'qty': qty,
        'price': price,
        'weight': weight,
        'options': options?.toJson(),
        'discount': discount,
        'tax': tax,
        'subtotal': subtotal,
      };
}
