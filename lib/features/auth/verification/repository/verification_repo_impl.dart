import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/repository/verification_repository.dart';
import '../../../../core/api/api.dart';
import '../../../../core/httpservices/http_services_impl.dart';
import '../../../../core/httpservices/http_services_repository.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';

class VerificationRepoImpl implements VerificationRepo {
  late HttpService httpService;

  VerificationRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> sendOtp({required Object body}) async =>
      await httpService.post(url: Api.otp, body: body);
  @override
  Future<Either<Failure, ApiResponse>> verifyOtp(
          {required Object body}) async =>
      await httpService.post(url: Api.verifyOtp, body: body);
}
