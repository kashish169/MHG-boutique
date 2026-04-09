import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class SearchRepository {
  Future<Either<Failure, ApiResponse>> search(String serchingProduct);
  Future<Either<Failure, ApiResponse>> filterProduct(
      {required String serchingProduct,
      required String storeiD,
      required String page});

  Future<Either<Failure, ApiResponse>> autoCompleteSearch(String query);
}
