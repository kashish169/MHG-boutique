import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import 'main_wrapper_repository.dart';

class MainWrapperRepoImpl implements MainWrapperRepo {
  late HttpService httpService;

  MainWrapperRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }
  @override
  Future<Either<Failure, ApiResponse>> addProductToCart({
    required Object body,
  }) async =>
      httpService.post(
        url: Api.addCartItem,
        isAuthorized: true,
        body: body,
      );
}
