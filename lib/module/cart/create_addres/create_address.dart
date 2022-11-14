import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sboba_user_app/module/cart/create_addres/address_controller.dart';
import 'package:sboba_user_app/shared/cities.dart';
import 'package:sboba_user_app/shared/component/custom_text_field.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/component/green_button.dart';
import '../../../shared/function/validInput.dart';
import '../../../shared/my_colors.dart';

class CreateAddress extends StatelessWidget {
  const CreateAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: myBlack),
          backgroundColor: Colors.grey[50],
        ),
        body: Padding(
          padding: EdgeInsets.all(1.h),
          child: GetBuilder<AddressController>(
            init: AddressController(),
            builder: (controller) => Form(
              key: controller.formKey,
              child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.h,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(2.h),
                            child: Center(
                              child: Text("Create Address".tr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.h),
                            child: MyTextField(
                              validate: ((p0) {
                                return validInput(p0!, 3, 100, "name");
                              }),
                              controller: controller.address,
                              obcure: false,
                              label: "Enter your address description".tr,
                              prefix: Icons.home,
                              onTapIcon: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 2.h, left: 2.h, right: 2.h),
                            child: MyTextField(
                              validate: ((p0) {
                                return validInput(p0!, 3, 40, "name");
                              }),
                              controller: controller.street,
                              obcure: false,
                              label: "Enter  your street name".tr,
                              prefix: MdiIcons.road,
                              onTapIcon: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 2.h, left: 2.h, right: 2.h),
                            child: MyTextField(
                              validate: ((p0) {
                                return validInput(p0!, 3, 40, "address");
                              }),
                              controller: controller.building,
                              obcure: false,
                              label: "Enter Building Name".tr,
                              prefix: Icons.home,
                              onTapIcon: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 2.h, left: 2.h, right: 2.h),
                            child: MyTextField(
                              validate: ((p0) {
                                return validInput(p0!, 3, 40, "address");
                              }),
                              controller: controller.floor,
                              obcure: false,
                              label: "Enter your floor number".tr,
                              prefix: MdiIcons.floorLamp,
                              onTapIcon: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 2.h, left: 2.h, right: 2.h),
                            child: MyTextField(
                              validate: ((p0) {
                                return validInput(p0!, 3, 40, "address");
                              }),
                              controller: controller.apartment,
                              obcure: false,
                              label: "Enter your apartment number".tr,
                              prefix: Icons.apartment,
                              onTapIcon: () {},
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  bottom: 4.h, left: 2.h, right: 2.h),
                              child: Container(
                                height: 4.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: myWhite,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Wrap(
                                    spacing: 20.h,
                                    children: [
                                      Text(
                                        "Show your location".tr,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp,
                                            color: myGreen),
                                      ),
                                      Icon(Icons.map_outlined)
                                    ],
                                  ),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 2.h, left: 2.h, right: 2.h),
                            child: Container(
                              height: 5.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  color: myWhite,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.h),
                                  child: Text(
                                    "Cities".tr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[900]),
                                  ),
                                ),
                                Spacer(),
                                DropdownButton(
                                  //isExpanded: true,
                                  borderRadius: BorderRadius.circular(5),
                                  iconDisabledColor: Colors.grey[600],
                                  iconEnabledColor: myOrange,
                                  elevation: 5,
                                  hint: controller.dropValue == null
                                      ? Text(
                                          "Choose Your City".tr,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[600]),
                                        )
                                      : Text(
                                          controller.dropValue!,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[600]),
                                        ),
                                  value: controller.dropValue,
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items
                                  items: cities.map((String items) {
                                    return DropdownMenuItem(
                                      enabled: true,
                                      value: items,
                                      child: Text(
                                        items,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: myGreen),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    controller.changeDrop(value);
                                  },
                                ),
                              ]),
                            ),
                          ),

                          BlueButton(
                              onpress: () {
                                //  controller.SignUp();
                              },
                              title: Text(
                                "Create".tr,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              ),
                              hight: 7.h,
                              width: 48.h),

                          //Spacer(),
                        ])),
              ),
            ),
          ),
        ));
  }
}
