import 'package:get/get.dart';
import 'package:sboba_user_app/module/cart/create_addres/address_controller.dart';

class AddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AddressController());
  }
}
