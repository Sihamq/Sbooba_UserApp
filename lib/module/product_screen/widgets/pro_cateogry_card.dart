import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/product_screen/product_controller.dart';
import 'package:sizer/sizer.dart';

import '../../../shared/my_colors.dart';

class ProCateogrysCard extends StatelessWidget {
  int? x;
  ProCateogrysCard({super.key, this.x});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
      builder: (controller) => InkWell(
        onTap: (() => controller.getSelected(x)),
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: controller.selected == x ? myOrange : myWhite,
          ),
          height: controller.selected == x ? 5.h : 3.h,
          width: controller.selected == x ? 12.h : 18.h,
          // alignment: controller.selected == x
          //     ? Alignment(-1.0, -1.0)
          //     : Alignment(1.0, 1.0),
          child: Center(
            child: Text(
              "Most Request",
              style: TextStyle(
                  color: controller.selected == x ? myWhite : myBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
