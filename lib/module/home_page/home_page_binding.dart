import 'package:get/get.dart';
import 'package:sboba_user_app/module/home_page/home_page_controller.dart';

class homePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}
