import 'dart:convert';
import 'package:get/get.dart';
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
        isAuthorized: true,
      );
  @override
  Future<Either<Failure, ApiResponse>> getUserPaymentMethods() async =>
      httpService.get(
        url: Api.userPaymentMethods,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> addPaymentMethod() async =>
      httpService.get(
        url: Api.addPaymentMethod,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> deletePaymentMethod(id) async =>
      httpService.post(
        url: Api.removePaymentMethod,
        isAuthorized: true,
        body: json.encode({"payment_method": id}),
      );

  @override
  Future<Either<Failure, ApiResponse>> setDefaultPaymentMethod(id) async =>
      httpService.post(
        url: Api.setDefaultPaymentMethod,
        isAuthorized: true,
        body: json.encode({"payment_method": id}),
      );

  @override
  Future<Either<Failure, ApiResponse>> orderPrice(
    Object query,
  ) async {
    return httpService.get(
      url: '${Api.orderPrice}$query',
      isAuthorized: true,
    );
  }

  @override
  Future<Either<Failure, ApiResponse>> createOrder(Object body) async {
    return httpService.post(
      url: Api.createOrder,
      isAuthorized: true,
      body: body,
    );
  }

  @override
  Future<Either<Failure, ApiResponse>> destroyGuestCart() async =>
      httpService.post(
        url: Api.destroyCart,
        isAuthorized: false,
      );
}
