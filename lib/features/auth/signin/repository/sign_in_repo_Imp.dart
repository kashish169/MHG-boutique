//
//
// import 'package:dartz/dartz.dart';
// import 'package:get/get.dart';
//
//
// class SignInRepoImpl implements SignInRepo {
//   late HttpService httpService;
//
//   SignInRepoImpl() {
//     httpService = Get.put(HttpServiceImplementation());
//   }
//
//   @override
//   Future<Either<Failure, ApiResponse>> signIn({
//     required Object body,
//   }) async =>
//       await httpService.post(
//         url: Api.login,
//         body: body,
//       );
//
// }
