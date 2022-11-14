import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/cart/cart_controller.dart';
import 'package:sboba_user_app/module/cart/select_address/widgets/details_address.dart';
import 'package:sboba_user_app/module/product_screen/details_product/widgets/details_container.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class AdressContainer extends StatelessWidget {
  int? x;
  AdressContainer({super.key, this.x});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      builder: (controller) => InkWell(
        onTap: (() => controller.getSelected(x)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: controller.selected == x
                      ? myGreen.withOpacity(.3)
                      : Colors.grey[400]!,
                  width: 2)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 4.h,
                  width: 100.w,
                  color: controller.selected == x
                      ? myGreen.withOpacity(.3)
                      : Colors.grey[400],
                  child: Padding(
                    padding: EdgeInsets.all(.5.h),
                    child: Row(children: [
                      Text(
                        "Select Address".tr,
                        style: TextStyle(
                            color: myGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: controller.selected == x
                            ? Icon(
                                Icons.done,
                                color: myGreen,
                                size: 18.sp,
                              )
                            : Text("😥"),
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: DetailsAddress(
                    title: "Address".tr,
                    details: "Address Descrption",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: DetailsAddress(
                    title: "City",
                    details: "City Name",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: DetailsAddress(
                    title: "Street Name".tr,
                    details: "Street Name",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: DetailsAddress(
                    title: "Building Name".tr,
                    details: "Building Name",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Wrap(
                    spacing: 2.h,
                    children: [
                      Text("Floor Number".tr,
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold)),
                      Text("${3}",
                          style: TextStyle(
                              color: myBlack, fontWeight: FontWeight.bold)),
                      Text("Apartment Number".tr,
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold)),
                      Text("${3}",
                          style: TextStyle(
                              color: myBlack, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: DetailsAddress(
                    title: "Near To".tr,
                    details: "Near To",
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
