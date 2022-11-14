import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/product_screen/products_view.dart';
import 'package:sboba_user_app/module/seller_profile/profile_details/widgets/review_card.dart';
import 'package:sboba_user_app/module/seller_profile/profile_details/widgets/seller_product.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class TabBarProfile extends StatelessWidget {
  TabBarProfile({super.key});
  TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(1.h),
            child: TabBar(
              controller: tabController,
              tabs: [
                Text(
                  "Products".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                      color: myGreen),
                ),
                Text("Reviews".tr,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                        color: myGreen)),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(1.h),
              child: TabBarView(
                controller: tabController,
                children: [
                  SellerProduct(),
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ReviewCard(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 1.h),
                      itemCount: 3),
                ],
              ),
            ),
          ),
        ]));
  }
}
