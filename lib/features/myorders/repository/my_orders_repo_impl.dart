import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import 'package:mhg/features/my_wish_list/repository/wish_list_repo.dart';
import 'package:mhg/features/myorders/repository/my_orders_repo.dart';

import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';

class MyOrdersRepoImpl implements MyOrdersRepository {
  late HttpService httpService;

  MyOrdersRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }


  @override
  Future<Either<Failure, ApiResponse>> getOrders() async =>
      httpService.get(
        url: Api.myOrders,
        isAuthorized: true,
      );

}
