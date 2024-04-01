import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/swipe/repository/swipe_repo.dart';
import '../../../app/app.dart';
import '../../../core/api/api.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';

class SwipeRepoImplement implements SwipRepository {
  late HttpService httpService;

  SwipeRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getSwipProducts() async =>
      httpService.get(
        url: Api.getSwipeProducts,
        isAuthorized: App.token.isEmpty ? false : true,
      );

  @override
  Future<Either<Failure, ApiResponse>> prefProduct(
          {required String body}) async =>
      await httpService.post(
        url: Api.getSwipePrefProducts,
        body: body,
      );
}
