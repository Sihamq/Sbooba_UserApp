import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sboba_user_app/module/cart/email_verification/otp.dart';
import 'package:sboba_user_app/module/splash_screen/splash_screen_animation.dart';
import 'package:sboba_user_app/shared/my_colors.dart';

import 'package:sizer/sizer.dart';

import '../../shared/component/green_button.dart';
import '../home_screen/home_screen.dart';

import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  String initialCountry = 'NG';
  PhoneNumber number1 = PhoneNumber(isoCode: 'YE');
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(
              top: 14.h,
            ),
            child: GetBuilder<LoginController>(
              init: LoginController(),
              builder: (controller) => Column(children: [
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: const Image(
                    image: AssetImage("assets/121.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3.h),
                  child: Text("Welcome To Sboba".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.sp)),
                ),
                Padding(
                  padding: EdgeInsets.all(3.h),
                  child: InternationalPhoneNumberInput(
                    initialValue: number1,
                    textFieldController: controller.phoneNumber,
                    cursorColor: myOrange,
                    hintText: "778404656",
                    onInputChanged: (PhoneNumber number) {
                      // print(" phone is${controller.phoneNumber}");
                      print(number.phoneNumber!
                          .capitalize); //get number with code country.
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: SelectorConfig(
                      useEmoji: true,
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.always,
                    selectorTextStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    // initialValue: ,
                    //  textFieldController: controller,
                    formatInput: true,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    inputBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 2)),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(3.h),
                //   child: MyTextField(
                //     controller: controller.nameController,
                //     obcure: false,
                //     label: "Enter your Email".tr,
                //     prefix: Icons.email,
                //     onTapIcon: () {},
                //   ),
                // ),
                BlueButton(
                    onpress: () {
                      FocusScope.of(context).unfocus();
                      //controller.login();
                      print("sucess");
                      Get.to(OTPScreen());
                    },
                    title: Text(
                      "LOGIN".tr,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                    hight: 7.h,
                    width: 49.h),
              ]),
            )),
      ),
    );
  }
}
