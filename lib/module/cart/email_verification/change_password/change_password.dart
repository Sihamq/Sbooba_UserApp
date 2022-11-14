import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sboba_user_app/module/cart/email_verification/change_password/change_controller.dart';

import 'package:sizer/sizer.dart';

import '../../../../shared/component/custom_text_field.dart';
import '../../../../shared/component/green_button.dart';
import '../widget/arrow_container.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    var ConfirmPasswordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: []),

      backgroundColor: Colors.white,
      // appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
              top: 150.0,
            ),
            child: GetBuilder<ChangePassController>(
              builder: (controller) => Column(children: [
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Container(
                    child: const Image(image: AssetImage("assets/121.png")),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Text("Set a new Password".tr,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Text("Set a new Password".tr,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 4.h, bottom: 2.h, left: 2.h, right: 2.h),
                  child: MyTextField(
                    controller: ConfirmPasswordController,
                    suffix: controller.iconVisiblity,
                    onTapIcon: () => controller.showPassword(),
                    obcure: true,
                    label: "Enter your password".tr,
                    prefix: Icons.lock,
                    // suffix: Icons.visibility,
                    // onTapIcon: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h, left: 2.h, right: 2.h),
                  child: MyTextField(
                    controller: passwordController,
                    obcure: true,
                    suffix: controller.iconVisiblity,
                    onTapIcon: () => controller.showPassword(),
                    label: "Confirm".tr,
                    prefix: Icons.lock,
                    //suffix: Icons.visibility,
                    //onTapIcon: () {},
                  ),
                ),
                BlueButton(
                    onpress: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => CreateAccount()),
                      // );
                    },
                    title: Text(
                      "Save".tr,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                    hight: 7.h,
                    width: 100.w),
              ]),
            )),
      ),
    );
    ;
  }
}
