import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChangePassController extends GetxController {
  IconData? iconVisiblity = Icons.visibility;
  bool isshowpassword = false;
  showPassword() {
    isshowpassword = !isshowpassword;
    // isshowpassword = isshowpassword == true ? false : true;

    iconVisiblity =
        isshowpassword ? Icons.visibility : Icons.visibility_off_outlined;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
