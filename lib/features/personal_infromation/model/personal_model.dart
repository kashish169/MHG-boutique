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

  UpdateInfoModel(
      {required this.name,
      required this.email,
      required this.number,
      this.gender,
      this.notifyMe,
      required this.address,
      this.image});
  Map<String, dynamic> toJson() => {
        "name": name,
        "phone_number": number,
        "email": email,
        'gender': gender,
        // 'dob': dob,
        'notify_me': notifyMe,
        'streat_address': address,
      };
}
