import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/httpservices/http_services_impl.dart';
import 'package:mhg/core/httpservices/http_services_repository.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import 'package:mhg/features/checkout/repository/checkout_repo.dart';

class CheckoutRepoImplement implements CheckoutRepository {
  late HttpService httpService;

  CheckoutRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }
  @override
  Future<Either<Failure, ApiResponse>> getPaymentMethods() async =>
      httpService.get(
        url: Api.paymentMethods,
        isAuthorized: App.token.isEmpty ? false : true,
      );
}
