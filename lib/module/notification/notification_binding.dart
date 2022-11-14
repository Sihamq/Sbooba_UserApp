import 'package:get/get.dart';
import 'package:sboba_user_app/module/notification/notification_controller.dart';

class Notification extends Bindings {
  @override
  void dependencies() {
    Get.put(NotificationController());
  }
}
