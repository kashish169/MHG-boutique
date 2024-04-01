import 'package:get/get.dart';
import 'package:mhg/features/notifications/controller/notification_controller.dart';
import 'package:mhg/features/notifications/repository/notification_impl.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NotificationImpl());
    Get.put(NotificationController());
  }
}
