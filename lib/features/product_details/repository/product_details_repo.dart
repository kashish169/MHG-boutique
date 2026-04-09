import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import 'product_details_repo_impl.dart';

class ProductDetailsRepoImplement implements ProductDetailsRepository {
  late HttpService httpService;

  ProductDetailsRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getProductDetails({
    required int productId,
  }) async =>
      httpService.get(
        url: "${Api.productDetails}?product=$productId",
        isAuthorized: App.token.isEmpty ? false : true,
      );

  @override
  Future<Either<Failure, ApiResponse>> addProductToCart({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.addCartItem,
        isAuthorized: true,
        body: body,
      );

  @override
  Future<Either<Failure, ApiResponse>> addReview({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.addReview,
        isAuthorized: true,
        body: body,
      );

  @override
  Future<Either<Failure, ApiResponse>> ofsSubscribe(
          {required Object body}) async =>
      httpService.post(
        url: Api.productOfsSubscribe,
        isAuthorized: true,
        body: body,
      );

  @override
  Future<Either<Failure, ApiResponse>> ofsUnSubscribe(
          {required Object body}) async =>
      httpService.post(
        url: Api.productOfsUnSubscribe,
        isAuthorized: true,
        body: body,
      );

  @override
  Future<Either<Failure, ApiResponse>> getTabbyLink({required double price}) =>
      httpService.get(
        url: '${Api.getTabbyLinkMessage}?price=$price',
        isAuthorized: true,
      );
}
