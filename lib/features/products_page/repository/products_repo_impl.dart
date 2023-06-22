import 'package:get/get.dart';
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
  Future<Either<Failure, ApiResponse>> getCategoryProduct(String query) async =>
      httpService.get(
        url: '${Api.filterProduct}$query',
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> getProductTags() async =>
      httpService.get(
        url: Api.productTags,
        isAuthorized: true,
      );

  @override
  Future<Either<Failure, ApiResponse>> getBrandsCategories(int brandId) async =>
      httpService.get(
        url: "${Api.categoriesByBrand}?brand_id=$brandId",
        isAuthorized: true,
      );
}
