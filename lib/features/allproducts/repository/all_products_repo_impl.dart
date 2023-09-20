import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import 'all_products_repo.dart';

class AllProductsRepoImplement implements AllProductsRepository {
  late HttpService httpService;

  AllProductsRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getAllProducts({required String query}) async => httpService.get(
        url: Api.allProducts+query,
        isAuthorized: App.token.isEmpty ? false : true,
      );
}
