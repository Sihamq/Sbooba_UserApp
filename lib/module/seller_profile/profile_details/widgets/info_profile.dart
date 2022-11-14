import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/shared/dot_line_vert.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.h,
      width: 90.w,
      child: Card(
        elevation: 5,
        child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 4.h,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Text(
                      "Orders".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: myGreen),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Text(
                      "${200}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: myOrange),
                    ),
                  ),
                ],
              ),
              FDottedLine(
                color: Colors.grey[400]!,
                height: 7.h,
                strokeWidth: 2.0,
                dottedLength: 10.0,
                space: 2.0,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Text(
                      "Likes".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: myGreen),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Text(
                      "${200}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: myOrange),
                    ),
                  ),
                ],
              ),
              FDottedLine(
                color: Colors.grey[400]!,
                height: 7.h,
                strokeWidth: 2.0,
                dottedLength: 10.0,
                space: 2.0,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Text(
                      "Products".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: myGreen),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Text(
                      "${200}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: myOrange),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
