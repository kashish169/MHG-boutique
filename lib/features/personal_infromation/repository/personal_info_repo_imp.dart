import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'personal_info_repo.dart';

class PersonalInfoRepoImpl implements PersonalInfoRepo {
  late HttpService httpService;

  PersonalInfoRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> updateData({
    required Object body,
  }) async {
    return await httpService.post(
      url: Api.updateProfile,
      body: body,
      isAuthorized: true,
    );
  }

  @override
  Future<Either<Failure, ApiResponse>> deleteData() async =>
      await httpService.post(
        url: Api.deleteAccount,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> getCountries() async =>
      await httpService.get(
        url: Api.getCountries,
      );
}
