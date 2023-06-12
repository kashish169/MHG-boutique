import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/auth/signin/repository/sign_in_repo.dart';

class SignInRepoImpl implements SignInRepo {
  late HttpService httpService;

  SignInRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> signIn({
    required Object body,
  }) async =>
      await httpService.post(
        url: Api.login,
        body: body,
      );

  @override
  Future<Either<Failure, ApiResponse>> signInWithOutOtp(
          {required Object body}) async =>
      await httpService.post(
        url: Api.loginEmail,
        body: body,
      );
}
