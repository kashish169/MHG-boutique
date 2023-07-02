import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

import 'settings_repo.dart';

class SettingsRepoImpl implements SettingsRepo {
  late HttpService httpService;

  SettingsRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getPraivacyPolicy() async =>
      await httpService.get(
        url: Api.privacyPolicyLink,
        isAuthorized: true,
      );
  @override
  Future<Either<Failure, ApiResponse>> getTermsAndConditions() async =>
      await httpService.get(
        url: Api.termsAndConidtionsLink,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> updateNotification(
    Object body,
  ) async =>
      await httpService.post(
        url: Api.updateProfile,
        isAuthorized: true,
        body: body,
      );
}
