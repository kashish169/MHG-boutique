import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/profile/repository/profile_repository.dart';

class ProfileRepoImpl implements ProfileRepo {
  late HttpService httpService;

  ProfileRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getInfo() async => await httpService.get(
        url: Api.profile,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> sendHearts(Object body) async =>
      await httpService.post(
        url: Api.sendHearts,
        isAuthorized: true,
        body: json.encode(body),
      );
  @override
  Future<Either<Failure, ApiResponse>> sendFeedBack(Object body) async =>
      await httpService.post(
        url: Api.sendFeedback,
        isAuthorized: true,
        body: body,
      );

  @override
  Future<Either<Failure, ApiResponse>> logOut() async => await httpService.post(
        url: Api.logOut,
        isAuthorized: true,
      );
}
