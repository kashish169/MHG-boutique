import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SignUpController extends GetxController {
 // late SignUpRepo signUpRepo;


  SignUpController() {
   // signUpRepo = Get.find<SignUpRepoImpl>();

  }



  RxBool isLoading = false.obs;
  final formKey = GlobalKey<FormState>();

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();




  void changeLoading() {
    isLoading.toggle();
  }



  // String? validateEmail(String email) {
  //   var value = EmailValidator.validate(email);
  //   if (value == false) {
  //     return 'enter valid email';
  //   } else {
  //     return null;
  //   }
  // }
  // String? validatePhone(String value) {
  //   if (value.isEmpty) {
  //     return 'required field';
  //   } else if (GetUtils.isPhoneNumber(countryCode.value + value) == false) {
  //     return 'enter valid phone number';
  //   } else {
  //     return null;
  //   }
  // }



  String? validatePassword(String value) {
    if (value.trim().length < 8) {
      return 'password must be at least 8 chars';
    } else {
      return null;
    }
  }



}
