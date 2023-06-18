import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import 'products_repo.dart';

class ProductsRepoImplement implements ProductsRepository {
  late HttpService httpService;

  ProductsRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getCategoryProduct({required String categoryId,required String page}) async => httpService.get(
        url: '${Api.productByCategory}&category_id=$categoryId&page=$page',
        isAuthorized: App.token.isEmpty ? false : true,
      );
}
