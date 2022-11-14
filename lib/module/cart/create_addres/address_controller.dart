import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AddressController extends GetxController {
  var address = TextEditingController();
  var city = TextEditingController();
  var street = TextEditingController();
  var building = TextEditingController();
  var floor = TextEditingController();
  var apartment = TextEditingController();
  var nearTo = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? dropValue;
  changeDrop(x) {
    dropValue = x;
    update();
  }
}
