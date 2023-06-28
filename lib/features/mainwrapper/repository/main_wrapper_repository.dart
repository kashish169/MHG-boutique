import 'package:dartz/dartz.dart';
// import 'package:mhg/core/api/api.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

abstract class MainWrapperRepo {
  Future<Either<Failure, ApiResponse>> addProductToCart({
    required Object body,
  });
}
