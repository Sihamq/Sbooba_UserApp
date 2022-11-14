import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/my_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.h)),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(15),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 120.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/b.jpg"))),
                ),
                Padding(
                  padding: EdgeInsets.all(.5.h),
                  child: Text(
                    "Hot Burger",
                    style: TextStyle(
                        color: myGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1.w, right: 1.w),
                  child: Wrap(spacing: 2.w, children: [
                    Text(
                      "10.0",
                      style: TextStyle(
                          fontSize: 8.sp, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.discount_rounded,
                      color: myGreen,
                      size: 4.w,
                    ),
                    Text(
                      "EndDate".tr,
                      style: TextStyle(
                          fontSize: 8.sp, fontWeight: FontWeight.bold),
                    ),
                    Text("22-10-2022",
                        style: TextStyle(
                            fontSize: 8.sp, fontWeight: FontWeight.bold))
                  ]),
                ),
                Wrap(spacing: 4, children: [
                  Text("100.0",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 9.sp,
                          color: Colors.grey[500])),
                  Text("${100.0}SAR".tr,
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 9.sp,
                          color: myOrange))
                ]),
                Spacer(),
                Container(
                    color: myGreen.withOpacity(.1),
                    height: 3.h,
                    width: 100.w,
                    child: Wrap(
                      children: [
                        RatingBarIndicator(
                          rating: 2.75,
                          itemBuilder: (context, index) => Icon(
                            Icons.star_border_outlined,
                            color: myOrange,
                          ),
                          itemCount: 1,
                          itemSize: 6.w,
                          direction: Axis.horizontal,
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.h),
                          child: Text(
                            "3.0",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 9.sp),
                          ),
                        )
                      ],
                    )),
              ],
            )),
      ],
    );
  }
}
