import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

import 'about_us_repo.dart';

class AboutUsRepoImpl implements AboutUsRepo {
  late HttpService httpService;

  AboutUsRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getAboutData() async =>
      await httpService.get(
        url: Api.aboutUsLink,
        isAuthorized: true,
      );
}
