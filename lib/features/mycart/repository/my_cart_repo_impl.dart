import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import 'package:mhg/features/mycart/repository/my_cart_repo.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';

class MyCartRepoImplement implements MyCartRepository {
  late HttpService httpService;

  MyCartRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getCart() async => httpService.get(
        url: Api.cartItems,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> deleteCartItem({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.deleteCartItem,
        body: body,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> increaseCartItem({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.increaseCartItem,
        body: body,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> decreaseCartItem({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.decreaseCartItem,
        body: body,
        isAuthorized: true,
      );
}
