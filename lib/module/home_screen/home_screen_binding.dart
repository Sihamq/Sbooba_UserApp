import 'package:get/get.dart';
import 'package:sboba_user_app/module/home_page/home_page_controller.dart';
import 'package:sboba_user_app/module/home_screen/home_controller.dart';

class HomeSBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
    // Get.put(HomePageController);
  }
}
