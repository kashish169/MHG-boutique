import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/myorders/models/order_model.dart';
import 'package:mhg/features/myorders/repository/my_orders_repo.dart';
import 'package:mhg/features/myorders/repository/my_orders_repo_impl.dart';

class MyOrdersController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  late MyOrdersRepository myOrdersRepository;
  late MyOrdersModel myOrdersModel;
  RxList<MyOrder> orders=<MyOrder>[].obs;
  RxList<MyOrder> returns=<MyOrder>[].obs;
  RxList<MyOrder> cancelled=<MyOrder>[].obs;
  MyOrdersController(){
    myOrdersRepository = Get.find<MyOrdersRepoImpl>();
  }

 @override
 onInit(){
   getMyOrders();
    super.onInit();
 }

  Future<void> getMyOrders() async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results =
      await myOrdersRepository.getOrders();
      isLoading(false);
      results.fold(
            (l) {
          isError(true);
          AppToasts.errorToast(l.message);
          log("Orders${l.message}");
        },
            (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          var stats = r.object['isSuccessful'];
          log("MyOrders Status Code $statusCode");
          if (stats == true) {
            var json = r.object["data"];
           myOrdersModel=MyOrdersModel.fromJson(json);
            filterOrders();
           log(myOrdersModel.toString());

           log(r.object["data"].toString());
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e) {
      isError(true);
      print("catch error" "$e");
    }
  }
  filterOrders(){

    for(int i=0;i<myOrdersModel.orders.length;i++){
      if(myOrdersModel.orders[i].orderStatus==6){
        returns.add(myOrdersModel.orders[i]);
      }else{
        if(myOrdersModel.orders[i].orderStatus==5){
          cancelled.add(myOrdersModel.orders[i]);
        }else{
          orders.add(myOrdersModel.orders[i]);

        }

      }





    }
  }




}
