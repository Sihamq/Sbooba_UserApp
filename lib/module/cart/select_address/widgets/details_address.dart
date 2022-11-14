import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class DetailsAddress extends StatelessWidget {
  String? title;
  String? details;

  DetailsAddress({super.key, this.title, this.details});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 3.h,
      children: [
        Text(title!,
            style: TextStyle(
                color: Colors.grey[500], fontWeight: FontWeight.bold)),
        Text(details!,
            style: TextStyle(color: myBlack, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
