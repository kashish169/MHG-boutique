class ShippingModel {
  String name;
  String email;
  String street;
  String state;
  String zipcode;
  String country;

  ShippingModel({
    required this.name,
    required this.email,
    required this.street,
    required this.state,
    required this.zipcode,
    required this.country,
  });

  factory ShippingModel.fromJson(Map<String, dynamic> json) => ShippingModel(
        name: json['name'],
        email: json['email'],
        street: json['street'],
        state: json['state'],
        zipcode: json['zipcode'],
        country: json['country'],
      );
}
