import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sboba_user_app/module/cart/confirm_order.dart';
import 'package:sboba_user_app/module/product_screen/details_product/widgets/counter_container.dart';
import 'package:sboba_user_app/module/product_screen/details_product/widgets/profile_container.dart';
import 'package:sboba_user_app/shared/component/ripple%20animation.dart';

import 'package:sizer/sizer.dart';

import '../../../../shared/my_colors.dart';

class DetailsContainer extends StatelessWidget {
  DetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.h,
      ),
      child: Container(
        width: 100.w,
        height: 66.h,
        decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
            color: myGreen,
            width: 7.0,
          )),
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //   topRight: Radius.circular(55.0),
          //   topLeft: Radius.circular(55.0),
          // ),
        ),
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        "Pizza",
                        style: TextStyle(
                            color: Colors.black,
                            wordSpacing: 3,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 12.h,
                      ),
                      Container(
                          width: 22.w,
                          height: 3.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: myGreen.withOpacity(.3)),
                          child: Center(
                            child: Text(
                              "Sweets",
                              style: TextStyle(
                                  color: Colors.black,
                                  wordSpacing: 3,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                ),

                Wrap(
                  spacing: 3.w,
                  children: [
                    Text(
                      "${100.0}SAR".tr,
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 8.sp),
                    ),
                    Text(
                      "${10.0}",
                      style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.bold,
                          color: myGreen),
                    ),
                    Icon(
                      MdiIcons.ticket,
                      size: 2.h,
                      color: myGreen,
                    ),
                    Text(
                      "Date".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 8.sp),
                    ),
                    Text(
                      "${100.0}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 8.sp),
                    ),
                  ],
                ),

                Text(
                  "${140} SAR".tr,
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: myOrange,
                      fontWeight: FontWeight.bold),
                  maxLines: 3,
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Wrap(
                    spacing: 3.w,
                    children: [
                      Text("${1} Large".tr,
                          style: TextStyle(
                              color: Colors.black,
                              wordSpacing: 3,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold)),
                      Icon(Icons.more_vert),
                      Text("${250} Calories".tr,
                          style: TextStyle(
                              color: Colors.black,
                              wordSpacing: 3,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: CustomHorizCounterContainer(
                      upward: () {}, downrd: () {}, counter: 0),
                ),
                Text("Description/Ingredient".tr,
                    style: TextStyle(
                        color: Colors.black,
                        wordSpacing: 3,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold)),

                Text(
                  "The menu has been called “a map that encourages easy navigation between hunger and satisfaction.” Mouthwatering restaurant menu descriptions can make your clients crave your offerings and happy patrons come back many times.",
                  style: TextStyle(
                      color: Colors.grey[700],
                      height: 2,
                      fontWeight: FontWeight.bold),
                  maxLines: 5,
                ),
                Text("Tags".tr,
                    style: TextStyle(
                        color: Colors.black,
                        wordSpacing: 3,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Wrap(
                    spacing: 2.w,
                    children: [
                      Chip(
                        padding: EdgeInsets.only(left: 2.h, right: 2.h),
                        label: Text(
                          "Tag",
                          style: TextStyle(
                              color: Colors.grey[500],
                              wordSpacing: 3,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: myGreen.withOpacity(.1),
                      ),
                      Chip(
                        padding: EdgeInsets.only(left: 2.h, right: 2.h),
                        label: Text(
                          "Tag",
                          style: TextStyle(
                              color: Colors.grey[500],
                              wordSpacing: 3,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: myGreen.withOpacity(.1),
                      ),
                      Chip(
                        padding: EdgeInsets.only(left: 3.h, right: 3.h),
                        label: Text(
                          "Tag".tr,
                          style: TextStyle(
                              color: Colors.grey[500],
                              wordSpacing: 3,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: myGreen.withOpacity(.1),
                      ),
                    ],
                  ),
                ),
                ProfileCntainer(),
                Padding(
                  padding: EdgeInsets.all(.8.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                          minWidth: 17.h,
                          onPressed: () {},
                          child: Text(
                            "ADD TO CART".tr,
                            style: TextStyle(
                                color: myWhite, fontWeight: FontWeight.bold),
                          ),
                          color: myGreen),
                      SizedBox(width: 3.h),
                      MaterialButton(
                          minWidth: 17.h,
                          onPressed: () {
                            Get.to(ConfirmOrder());
                          },
                          child: Text(
                            "CHECK CART".tr,
                            style: TextStyle(
                                color: myWhite, fontWeight: FontWeight.bold),
                          ),
                          color: myGreen.withOpacity(.6)),
                    ],
                  ),
                )

                // Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
