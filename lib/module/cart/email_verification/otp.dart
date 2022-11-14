import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/cart/email_verification/widget/arrow_container.dart';
import 'package:sboba_user_app/module/cart/email_verification/widget/pinCode.dart';
import 'package:sboba_user_app/module/home_screen/home_screen.dart';

import 'package:sizer/sizer.dart';

import '../../../shared/component/green_button.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      // appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(
              top: 13.h,
            ),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Container(
                  child: const Image(image: AssetImage("assets/121.png")),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Text("WriteCode".tr, style: TextStyle(fontSize: 16.sp)),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: 2.h, bottom: 1.h, left: 7.w, right: 7.w),
                  child: CustomPinCode()),
              BlueButton(
                  onpress: () {
                    Get.to(() => HomeScreen());
                  },
                  title: Text(
                    "Next".tr,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                  hight: 6.h,
                  width: 100.w),
              const SizedBox(
                height: 180,
              ),
            ])),
      ),
    );
  }
}
