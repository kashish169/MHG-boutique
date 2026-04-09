import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import 'search_repo.dart';

class SearchRepoImplement implements SearchRepository {
  late HttpService httpService;

  SearchRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> search(String serchingProduct) async =>
      httpService.get(
        url: "${Api.searchLink}?search=$serchingProduct",
        isAuthorized: App.token.isEmpty ? false : true,
      );
  @override
  Future<Either<Failure, ApiResponse>> filterProduct(
          {required String serchingProduct,
          required String storeiD,
          required String page}) async =>
      httpService.get(
        url:
            "${Api.filterProductLink}?store_id=$storeiD&search=$serchingProduct&page=$page",
        isAuthorized: App.token.isEmpty ? false : true,
      );

  @override
  Future<Either<Failure, ApiResponse>> autoCompleteSearch(String query) async =>
      httpService.get(
        url: Api.autoComplete + query,
        isAuthorized: App.token.isEmpty ? false : true,
      );
}
