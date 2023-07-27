import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/success_order/repository/success_order_repo.dart';

class SuccessOrderRepoImpl implements SuccessOrderRepo {
  late HttpService httpService;

  SuccessOrderRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getData(String orderNumber) async =>
      await httpService.get(
        url: "${Api.successOrderLink}?order_number=$orderNumber",
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> getOrders() async => httpService.get(
        url: Api.myOrders,
        isAuthorized: App.token.isNotEmpty?true:false,
      );
}
