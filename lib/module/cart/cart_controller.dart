import 'package:get/get_state_manager/get_state_manager.dart';

class CartController extends GetxController {
  int? selected = 0;
  getSelected(x) {
    selected = x;
    update();
  }
}
