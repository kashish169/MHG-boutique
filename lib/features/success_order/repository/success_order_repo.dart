import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

abstract class SuccessOrderRepo {
  Future<Either<Failure, ApiResponse>> getData(String orderNumber);
  Future<Either<Failure, ApiResponse>> getOrders();

}
