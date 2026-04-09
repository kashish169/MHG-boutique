import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

import 'on_board_repo.dart';

class UnBoardRepoImpl implements UnBoardRepo {
  late HttpService httpService;

  UnBoardRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getCountryData() async =>
      await httpService.get(
        url: Api.countryLink,
        isAuthorized: false,
      );
}
