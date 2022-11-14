import 'package:get/get.dart';

class ProductsController extends GetxController {
  int? selected = 0;
  getSelected(x) {
    selected = x;
    update();
  }
}
