


import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

abstract class CheckoutRepository{
  Future<Either<Failure, ApiResponse>> getPaymentMethods();
}