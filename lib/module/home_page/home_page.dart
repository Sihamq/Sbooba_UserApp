import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/home_page/widgets/cateogry_container.dart';
import 'package:sboba_user_app/module/home_page/widgets/product_card.dart';
import 'package:sboba_user_app/module/product_screen/details_product/details_product.dart';
import 'package:sboba_user_app/shared/my_colors.dart';

import 'package:sizer/sizer.dart';

import 'home_page_controller.dart';

class HomePage extends GetWidget<HomePageController> {
  HomePage({super.key});

  TabController? cont;

  @override
  Widget build(BuildContext context) {
    //Get.find();
    return GetBuilder<HomePageController>(
      builder: (controller) =>
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding:
              EdgeInsets.only(top: 2.h, bottom: 1.h, left: 2.h, right: 2.h),
          child: Text(
            "LAST CATEOGRIES".tr,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.h),
          child: Container(
            width: 48.h,
            height: 6.h,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      width: 1.5.h,
                    ),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                //     childAspectRatio: 5 / 2,
                //     maxCrossAxisExtent: 100,
                //     mainAxisSpacing: 100,
                //     crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return CateogryCard(
                    x: index,
                  );
                }),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 2.h, bottom: 2.h, left: 2.h, right: 2.h),
          child: Text(
            "LAST Products".tr,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 2 / 2,
                  maxCrossAxisExtent: 350,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: ((context, index) => InkWell(
                  onTap: (() => Get.to(() => DetailsProduct())),
                  child: ProductCard())),
              itemCount: 5),
        ),
      ]),
    );
  }
}
