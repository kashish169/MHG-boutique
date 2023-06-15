import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:dartz/dartz.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import 'home_repo.dart';

class HomeRepoImplement implements HomeRepository {
  late HttpService httpService;

  HomeRepoImplement() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getHome() async => httpService.get(
        url: Api.home,
        isAuthorized: App.token.isEmpty ? false : true,
      );
}
