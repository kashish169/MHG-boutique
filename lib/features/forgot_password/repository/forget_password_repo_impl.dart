import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/forgot_password/repository/forget_password_repository.dart';

class ForgetPasswordRepoImpl implements ForgetPasswordRepo {
  late HttpService httpService;

  ForgetPasswordRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> forgetPassword(
          {required String body}) async =>
      await httpService.post(
        url: Api.forgetPassword,
        body: body,
      );
  @override
  Future<Either<Failure, ApiResponse>> resetPassword(
          {required String body}) async =>
      await httpService.post(
        url: Api.resetPassword,
        body: body,
      );
}
