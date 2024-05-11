import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import 'categories_repo.dart';

class CategoriesRepoImplement implements CategoriesRepository {
  late HttpService httpService;

  CategoriesRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getCategories() async => httpService.get(
        url: Api.menus,
        isAuthorized: App.token.isEmpty ? false : true,
      );

  @override
  Future<Either<Failure, ApiResponse>> getBrands() async => httpService.get(
        url: Api.getBrands,
        isAuthorized: App.token.isEmpty ? false : true,
      );
}
