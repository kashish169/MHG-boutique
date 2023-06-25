import 'package:get/get.dart';
import 'package:mhg/features/stroresmap/controller/stores_map_controller.dart';


class StoresMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StoresMapController());
  }
}
