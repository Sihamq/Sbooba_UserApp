import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sboba_user_app/module/seller_profile/profile_details/widgets/info_profile.dart';
import 'package:sboba_user_app/module/seller_profile/profile_details/widgets/tabbar_profile.dart';
import 'package:sboba_user_app/module/profile_screen/widgets/profile_card.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhite,
      appBar: AppBar(
          backgroundColor: myWhite,
          elevation: 0,
          iconTheme: IconThemeData(color: myBlack)),
      body: Padding(
        padding: EdgeInsets.all(.5.h),
        child: Column(
          //shrinkWrap: true,
          children: [
            Center(
              child: Container(
                height: 12.h,
                width: 12.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image(
                  image: AssetImage("assets/img.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(1.h),
              child: Text(
                "Sweet Home",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: 4.h, right: 4.h, top: 1.h, bottom: 1.h),
                child: Text(
                  "Never is this principle more pertinent than when dealing with type, the bread and butter of Web-borne communication. A well-set paragraph of text is not supposed to wow the reader",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 9.sp),
                  maxLines: 3,
                )),
            Padding(
              padding: EdgeInsets.all(1.h),
              child: InfoProfile(),
            ),
            Expanded(child: TabBarProfile())
          ],
        ),
      ),
    );
  }
}
