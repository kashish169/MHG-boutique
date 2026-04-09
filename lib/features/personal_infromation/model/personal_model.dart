import 'dart:convert';

import 'package:get/get.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';

String updateInfoModel(UpdateInfoModel data) => json.encode(data.toJson());
PersonalInformationController controller = Get.find();

class UpdateInfoModel {
  String name;
  String? email;
  String number;
  String? gender;
  String? dob;
  int? notifyMe;
  String? image;
  String address;
  bool isOptional;
  String? state;

  int? countryId;
  String? zipCode;
  UpdateInfoModel({
    required this.name,
    this.email,
    required this.number,
    this.gender,
    this.notifyMe,
    required this.address,
    required this.isOptional,
    this.image,
    this.state,
    this.countryId,
    this.zipCode,
    this.dob,
  });

  Map<String, dynamic> toJson() => isOptional
      ? {
          "name": name,
          "phone_number": number,
          'gender': gender,
          'dob': dob,
          'notify_me': notifyMe,
          'street_address': address,
          'state': state,
          'zip_code': zipCode,
          'country_id': countryId,
        }
      : {
          "name": name,
          "phone_number": number,
          "email": email,
          'gender': gender,
          'dob': dob,
          'notify_me': notifyMe,
          'street_address': address,
          'state': state,
          'zip_code': zipCode,
          'country_id': countryId,
        };
}
