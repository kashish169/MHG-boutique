import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/sign_up/repository/sign_up_repository.dart';
import '../../../../core/api/api.dart';
import '../../../../core/httpservices/http_services_impl.dart';
import '../../../../core/httpservices/http_services_repository.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';

class SignUpRepoImpl implements SignUpRepo {
  late HttpService httpService;

  SignUpRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> signUp({required Object body}) async =>
      await httpService.post(url: Api.signUp, body: body);

  // @override
  // Future<Either<Failure, ApiResponse>> uploadFiles(
  //         {required Map<String, String> body,
  //         required Map<String, File> files}) async =>
  //     await httpService.multiPart(
  //       url: Api.uploadFile,
  //       body: body,
  //       files: files,
  //       isAuthorized: true,
  //     );
}
