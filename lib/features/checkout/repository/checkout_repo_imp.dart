// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import 'package:mhg/features/checkout/repository/checkout_repo.dart';

class CheckoutRepoImplement implements CheckoutRepository {
  late HttpService httpService;

  CheckoutRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }
  @override
  Future<Either<Failure, ApiResponse>> getPaymentMethods() async =>
      httpService.get(
        url: Api.paymentMethods,
        isAuthorized: App.token.isEmpty ? false : true,
      );

  @override
  Future<Either<Failure, ApiResponse>> addPaymentMethod() async =>
      httpService.get(
        url: Api.addPaymentMethod,
        isAuthorized: App.token.isEmpty ? false : true,
      );

  @override
  Future<Either<Failure, ApiResponse>> deletePaymentMethod(id) async =>
      httpService.post(
        url: Api.removePaymentMethod,
        isAuthorized: App.token.isEmpty ? false : true,
        body: json.encode({"payment_method": id}),
      );

  @override
  Future<Either<Failure, ApiResponse>> setDefaultPaymentMethod(id) async =>
      httpService.post(
        url: Api.setDefaultPaymentMethod,
        isAuthorized: App.token.isEmpty ? false : true,
        body: json.encode({"payment_method": id}),
      );

  @override
  Future<Either<Failure, ApiResponse>> orderPrice(
      countryId, coupon, redeem) async {
    
    if (redeem != null) {
      redeem = int.parse(redeem);
    }

    return httpService.get(
      url: '${Api.orderPrice}?country=$countryId&coupon=$coupon&redeem=$redeem',
      isAuthorized: App.token.isEmpty ? false : true,
    );
  }

  @override
  Future<Either<Failure, ApiResponse>> createOrder(
    billingName,
    billingEmail,
    billingStreet,
    billingState,
    billingZipCode,
    billingCountry,
    coupon,
    pm,
    onlinePaymentMethod,
    redeem,
  ) async {
    Map<String, dynamic> map = {
      "billing_name": billingName,
      "billing_email": billingEmail,
      "billing_street_address": billingStreet,
      "billing_state": billingState,
      "billing_zipcode": billingZipCode,
      "billing_country": billingCountry,
      "shipping_name": billingName,
      "shipping_email": billingEmail,
      "shipping_street_address": billingStreet,
      "shipping_state": billingState,
      "shipping_zipcode": billingZipCode,
      "shipping_country": billingCountry,
      "coupon": coupon,
      "redeem": int.parse(redeem),
      "payment_method": pm,
      "online_payment_method_id": onlinePaymentMethod
    };
    map.removeWhere((key, value) => key == null || value == null);
    return httpService.post(
      url: Api.createOrder,
      isAuthorized: App.token.isEmpty ? false : true,
      body: json.encode(map),
    );
  }
}
