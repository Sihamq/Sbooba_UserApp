import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/cart/check_out/widgets/check_out_container.dart';
import 'package:sboba_user_app/module/cart/confirm_order.dart';
import 'package:sboba_user_app/shared/component/green_button.dart';
import 'package:sboba_user_app/shared/dot_line.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/component/curved_appBar.dart';
import '../../../shared/my_colors.dart';
import '../select_address/widgets/address_container.dart';

class CheckOut extends StatelessWidget {
  var codeController = TextEditingController();
  CheckOut({super.key});

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
                    itemBuilder: (ctx, index) => CheckOutContainer()),
              )),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!, width: 2),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: codeController,
                          decoration: InputDecoration(
                            hintText: "Enter Coupon Code".tr,
                          ),
                        ),
                      ),
                      MaterialButton(
                        height: 6.h,
                        onPressed: () {},
                        color: myGreen,
                        child: Text(
                          "APPLY COUPON".tr,
                          style: TextStyle(
                              color: myWhite, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * .6,
                  color: Colors.black45,
                ),
              ),
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
                            "CONFIRM PAYMENT".tr,
                            style: TextStyle(
                                color: myWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          onpress: () {
                            Get.to(() => ConfirmOrder());
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
