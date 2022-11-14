import 'package:get/get.dart';
import 'package:sboba_user_app/module/product_screen/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ProductsController());
    // Get.put(HomePageController);
  }
}
