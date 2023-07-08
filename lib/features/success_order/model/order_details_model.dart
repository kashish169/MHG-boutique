class OrderDetailsModel {
  int id;
  dynamic externalId;
  int orderId;
  int productId;
  dynamic sku;
  String productName;
  String image;
  dynamic size;
  dynamic color;
  dynamic price;
  int quantity;
  dynamic totalPrice;
  DateTime createdAt;
  DateTime updatedAt;
  String imageLink;

  OrderDetailsModel(
      {required this.id,
      this.externalId,
      required this.orderId,
      required this.productId,
      this.sku,
      required this.productName,
      required this.image,
      this.size,
      this.color,
      required this.price,
      required this.quantity,
      required this.totalPrice,
      required this.createdAt,
      required this.updatedAt,
      required this.imageLink});

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      OrderDetailsModel(
        id: json['id'],
        externalId: json['external_id'],
        orderId: json['Order_Id'],
        productId: json['Product_Id'],
        sku: json['sku'],
        productName: json['Product_Name'],
        image: json['Image'],
        size: json['Size'],
        color: json['Color'],
        price: json['Price'],
        quantity: json['Quantity'],
        totalPrice: json['Total_Price'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        imageLink: json['image_link'],
      );
}
