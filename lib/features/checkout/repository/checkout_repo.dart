import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

abstract class CheckoutRepository {
  Future<Either<Failure, ApiResponse>> getUserPaymentMethods();
  Future<Either<Failure, ApiResponse>> getPaymentMethods();
  Future<Either<Failure, ApiResponse>> addPaymentMethod(
      String? query, bool isGuest);
  Future<Either<Failure, ApiResponse>> deletePaymentMethod(id);
  Future<Either<Failure, ApiResponse>> setDefaultPaymentMethod(id);
  Future<Either<Failure, ApiResponse>> orderPrice(Object query);
  Future<Either<Failure, ApiResponse>> createOrder(Object body);
  Future<Either<Failure, ApiResponse>> destroyGuestCart();
  Future<Either<Failure, ApiResponse>> getApplePayConfiguration();
  Future<Either<Failure, ApiResponse>> getGoogleConfiguration();
}
