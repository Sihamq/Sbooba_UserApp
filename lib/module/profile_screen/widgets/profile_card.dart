import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class ProfilesmallCard extends StatelessWidget {
  IconData? icon;
  ProfilesmallCard({super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 8.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Card(
        elevation: 5,
        child: Icon(
          icon,
          size: 20.sp,
          color: myGreen,
        ),
      ),
    );
  }
}
