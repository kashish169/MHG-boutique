import 'dart:convert';

String updateInfoModel(UpdateInfoModel data) => json.encode(data.toJson());

class UpdateInfoModel {
  String name;
  String email;
  String number;
  String? gender;
  // final String dob;
  int? notifyMe;
  String? image;
  String address;
  String? state;
  String? zipCode;
  int? countryId;

  UpdateInfoModel({
    required this.name,
    required this.email,
    required this.number,
    this.gender,
    this.notifyMe,
    required this.address,
    this.state,
    this.image,
    this.countryId,
    this.zipCode,
  });
  Map<String, dynamic> toJson() => {
        "name": name,
        "phone_number": number,
        "email": email,
        'gender': gender,
        // 'dob': dob,
        'notify_me': notifyMe,
        'street_address': address,
        'state': state,
        'zip_code': zipCode, 'country_id': countryId,
      };
}
