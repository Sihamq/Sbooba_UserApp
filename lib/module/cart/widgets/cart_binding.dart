import 'package:get/get.dart';
import 'package:sboba_user_app/module/cart/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CartController());
  }
}
