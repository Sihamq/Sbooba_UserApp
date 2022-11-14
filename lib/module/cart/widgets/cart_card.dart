import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey[400]!, width: 1),
      ),
      child: Column(children: [
        Container(
          height: 4.h,
          width: 100.w,
          color: myGreen.withOpacity(.3),
          child: Padding(
            padding: EdgeInsets.all(.5.h),
            child: Row(children: [
              Text(
                "LEADIS FOOD",
                style: TextStyle(
                    color: myGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.cancel_outlined,
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
            Column(
              children: [
                Text(
                  "Hot Burger",
                  style: TextStyle(
                      color: myGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "${12.0}SAR",
                  style: TextStyle(
                      color: myOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 9.sp),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(1.h),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: myWhite,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: myGreen)),
                      child: Icon(
                        Icons.add,
                        color: myGreen,
                        size: 12.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.h),
                    child: Text(
                      "${0}",
                      style: TextStyle(
                          color: myOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 9.sp),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: myWhite,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2, color: myGreen)),
                      child: Center(
                        child: Icon(
                          MdiIcons.minus,
                          color: myGreen,
                          size: 12.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
