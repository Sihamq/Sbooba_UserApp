import 'package:flutter/material.dart';

import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class CustomHorizCounterContainer extends StatelessWidget {
  void Function()? upward;
  void Function()? downrd;
  dynamic counter;
  CustomHorizCounterContainer(
      {required this.upward, required this.downrd, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 25.h,
      height: 5.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[200]!),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: InkWell(
            child: Container(
              height: 5.h,
              width: 2.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: myGreen.withOpacity(.3)),
              child: Icon(
                Icons.add,
                size: 22,
                color: myGreen,
              ),
            ),
            onTap: upward,
          )),
          Padding(
            padding: EdgeInsets.only(left: 5.h, right: 5.h),
            child: Text(
              counter.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              child: Container(
                height: 5.h,
                width: 2.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: myGreen.withOpacity(.3)),
                child: Icon(
                  Icons.minimize,
                  size: 22,
                  color: myWhite,
                ),
              ),
              onTap: downrd,
            ),
          ),
        ],
      ),
    );
  }
}
