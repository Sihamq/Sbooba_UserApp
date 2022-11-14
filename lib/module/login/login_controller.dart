import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneNumber = TextEditingController();
  bool isshowpassword = false;
  var isLoading = true;
  IconData? iconVisiblity = Icons.visibility;
  showPassword() {
    isshowpassword = !isshowpassword;
    // isshowpassword = isshowpassword == true ? false : true;

    iconVisiblity =
        isshowpassword ? Icons.visibility : Icons.visibility_off_outlined;
    update();
  }

  @override
  void onInit() {
    print("phone:$phoneNumber");
    // TODO: implement onInit
    super.onInit();
  }
}
