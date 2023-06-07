// import 'dart:io';
//
// import 'package:dartz/dartz.dart';
// import 'package:get/get.dart';
//
//
// class SignUpRepoImpl implements SignUpRepo {
//   late HttpService httpService;
//
//   SignUpRepoImpl() {
//     httpService = Get.put(HttpServiceImplementation());
//   }
//
//   @override
//   Future<Either<Failure, ApiResponse>> signUp(
//           {required Map<String, String> body,
//           required Map<String, File> files}) async =>
//       await httpService.multiPart(url: Api.signUp, body: body, files: files);
//
//   @override
//   Future<Either<Failure, ApiResponse>> uploadFiles(
//           {required Map<String, String> body,
//           required Map<String, File> files}) async =>
//       await httpService.multiPart(
//         url: Api.uploadFile,
//         body: body,
//         files: files,
//         isAuthorized: true,
//       );
// }
