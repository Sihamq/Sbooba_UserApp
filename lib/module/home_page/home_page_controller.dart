import 'package:get/get.dart';

class HomePageController extends GetxController {
  int? selected = 0;
  getSelected(x) {
    selected = x;
    update();
  }
}
