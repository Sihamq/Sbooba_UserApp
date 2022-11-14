import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/seller_profile/profile_details/profile_details.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class ProfileCntainer extends StatelessWidget {
  const ProfileCntainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(.6.h),
      child: Row(
        children: [
          Container(
            height: 5.h,
            width: 8.h,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/img.jpg"), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(5)),
          ),
          Padding(
            padding: EdgeInsets.all(.1.h),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 9.h,
                    children: [
                      const Text(
                        "Sweet Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      //Spacer(),
                      InkWell(
                        onTap: () {
                          Get.to(() => ProfileDetails());
                        },
                        child: Text(
                          "View Profile".tr,
                          style: TextStyle(
                              color: myGreen,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  RatingBarIndicator(
                    rating: 2.75,
                    itemBuilder: (context, index) => Icon(
                      Icons.star_border_outlined,
                      color: myOrange,
                    ),
                    itemCount: 3,
                    itemSize: 6.w,
                    direction: Axis.horizontal,
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
