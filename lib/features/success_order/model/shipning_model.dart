class ShipningModel {
  String name;
  String email;
  String street;
  String state;
  String zipcode;
  String country;

  ShipningModel({
    required this.name,
    required this.email,
    required this.street,
    required this.state,
    required this.zipcode,
    required this.country,
  });

  factory ShipningModel.fromJson(Map<String, dynamic> json) => ShipningModel(
        name: json['name'],
        email: json['email'],
        street: json['street'],
        state: json['state'],
        zipcode: json['zipcode'],
        country: json['country'],
      );
}
