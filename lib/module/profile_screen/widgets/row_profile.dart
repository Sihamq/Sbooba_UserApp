import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class RowProfile extends StatelessWidget {
  IconData? icon;
  String? title;
  RowProfile({super.key, this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: myOrange.withOpacity(.7),
        ),
        Text(
          title!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
        )
      ],
    );
  }
}
