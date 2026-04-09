import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';

import '../../../core/models/failure.dart';

abstract class NotificationRepo {
  Future<Either<Failure, ApiResponse>> getNotifications(String query);
}
