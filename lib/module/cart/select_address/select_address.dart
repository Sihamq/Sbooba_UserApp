import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/cart/check_out/check_out.dart';
import 'package:sboba_user_app/module/cart/create_addres/address_binding.dart';
import 'package:sboba_user_app/module/cart/create_addres/create_address.dart';
import 'package:sboba_user_app/module/cart/select_address/widgets/address_container.dart';
import 'package:sboba_user_app/module/cart/widgets/cart_binding.dart';
import 'package:sboba_user_app/module/cart/widgets/cart_card.dart';
import 'package:sboba_user_app/shared/component/curved_appBar.dart';
import 'package:sboba_user_app/shared/dot_line.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/component/green_button.dart';

class SelectAddress extends StatelessWidget {
  const SelectAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: CurvedAppBar(),
          iconTheme: IconThemeData(color: myBlack),
          title: Text("Select Address".tr),
          titleTextStyle: TextStyle(
              color: myBlack, fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
        body: Padding(
          padding: EdgeInsets.all(1.h),
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(1.h),
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 3.h,
                        ),
                    itemCount: 2,
                    itemBuilder: (ctx, index) => AdressContainer(
                          x: index,
                        )),
              )),
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * .6,
                  color: Colors.black45,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(
                      () => CreateAddress(),
                      binding: AddressBinding(),
                    );
                  },
                  child: Text(
                    "To Add/Edit addresses .Go To address Page".tr,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: myOrange),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
                // height: MediaQuery.of(context).size.height * .3,
                color: myWhite,
                child: Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Amount".tr,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold)),
                          Text("${120} SAR",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 1.h, left: 1.h, right: 1.h),
                        child: MySeparator(),
                      ),
                      BlueButton(
                          hight: 7.h,
                          width: 140.w,
                          color: myGreen,
                          title: Text(
                            "Procced Shipping".tr,
                            style: TextStyle(
                                color: myWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          onpress: () {
                            Get.to(() => CheckOut(), binding: CartBinding());
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
