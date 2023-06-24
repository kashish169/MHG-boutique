import 'package:dartz/dartz.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';

abstract class MyOrdersRepository {

  Future<Either<Failure, ApiResponse>> getOrders();
}
