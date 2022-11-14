import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Wrap(
            children: [
              Icon(
                Icons.calendar_month,
                color: myOrange,
                size: 15.sp,
              ),
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Text(
                  "22-12-2022",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8.sp),
                ),
              ),
              Icon(
                Icons.timer,
                color: myOrange,
                size: 15.sp,
              ),
              Padding(
                padding: EdgeInsets.all(1.h),
                child: Text(
                  "22-12-2022",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8.sp),
                ),
              )
            ],
          ),
          Text(
            "Description",
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
          ),
          RatingBarIndicator(
            itemCount: 3,
            rating: 2.3,
            itemSize: 10.sp,
            itemBuilder: (context, index) {
              return Icon(
                Icons.star,
                color: myOrange,
              );
            },
          )
        ]),
      ),
    );
  }
}
