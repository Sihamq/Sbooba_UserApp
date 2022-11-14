//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/cart/cart_screen.dart';
import 'package:sboba_user_app/module/home_page/home_page.dart';
import 'package:sboba_user_app/module/home_page/home_page_controller.dart';
import 'package:sboba_user_app/module/product_screen/products_view.dart';
import 'package:sboba_user_app/module/seller_profile/profile_details/profile_details.dart';
import 'package:sboba_user_app/module/profile_screen/profile_screen.dart';

import '../notification/notification_view.dart';

class HomeController extends GetxController {
  // Get.put(HomePageController);
  var list = [
    HomePage(),
    ProductScreen(),
    NotificationView(),
    CartScreen(),
    ProfileScreen()
  ];
  var label = [
    "Home".tr,
    "Products".tr,
    "Notification".tr,
    "Cart".tr,
    "Profile".tr
  ];
  List<String> icon = [
    "assets/home.png",
    "assets/11.png",
    "assets/33.png",
    "assets/cart.png",
    "assets/44.png",
  ];
  int currentIndex = 0;
  TabController? tabController;
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

  changCurrentIndex(index) {
    currentIndex = index;
    update();
  }
}
