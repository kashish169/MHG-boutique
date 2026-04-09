import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import 'package:mhg/features/my_wish_list/repository/wish_list_repo.dart';

import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';

class WishListRepoImpl implements WishListRepository {
  late HttpService httpService;

  WishListRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> addToWishList({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.addToWishList,
        body: body,
        isAuthorized: true,
      );
  @override
  Future<Either<Failure, ApiResponse>> removeFromWishList({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.removeFromWishList,
        body: body,
        isAuthorized: true,
      );
  @override
  Future<Either<Failure, ApiResponse>> getWishListData() async =>
      httpService.get(
        url: Api.getWishListDataLink,
        isAuthorized: true,
      );
  @override
  Future<Either<Failure, ApiResponse>> addToBag({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.addCartItem,
        body: body,
        isAuthorized: true,
      );
}
