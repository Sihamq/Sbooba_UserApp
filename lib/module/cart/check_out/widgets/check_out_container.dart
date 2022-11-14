import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../../../../shared/my_colors.dart';

class CheckOutContainer extends StatelessWidget {
  const CheckOutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: myGreen.withOpacity(.3), width: 2)),
      child: Column(children: [
        Container(
          height: 4.h,
          width: 100.w,
          color: myGreen.withOpacity(.3),
          child: Padding(
            padding: EdgeInsets.all(.5.h),
            child: Row(children: [
              Text(
                "",
                style: TextStyle(
                    color: myGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.done,
                  color: myGreen,
                  size: 18.sp,
                ),
              )
            ]),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(.5.h),
              child: Container(
                  child: Image(
                image: AssetImage(
                  "assets/b.jpg",
                ),
                fit: BoxFit.cover,
                height: 10.h,
                width: 10.h,
              )),
            ),
            Text(
              "Cash On Delivery",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
            )
          ],
        )
      ]),
    );
  }
}
