import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/api_response.dart';

import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import '../../../core/models/failure.dart';
import 'notification_repo.dart';

class NotificationImpl implements NotificationRepo {
  late HttpService httpService;

  NotificationImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }

  @override
  Future<Either<Failure, ApiResponse>> getNotifications(String query) async =>
      await httpService.get(
        url: Api.notifications + query,
        isAuthorized: true,
      );
}
