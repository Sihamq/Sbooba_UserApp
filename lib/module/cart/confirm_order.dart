import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/shared/component/ripple%20animation.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: myWhite,
      body: Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Center(
          child: Column(
            children: [
              RipplesAnimation(),
              Text(
                "Confirm Order Done".tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
