import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class SearchRepository {
  Future<Either<Failure, ApiResponse>> search(String serchingProduct);
}
