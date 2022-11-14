import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sboba_user_app/lang/lang_controller.dart';
import 'package:sboba_user_app/module/cart/email_verification/change_password/change_binding.dart';
import 'package:sboba_user_app/module/cart/email_verification/change_password/change_password.dart';
import 'package:sboba_user_app/module/profile_screen/widgets/profile_card.dart';
import 'package:sboba_user_app/module/profile_screen/widgets/row_profile.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: Column(
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
          Wrap(
            spacing: 3.h,
            children: [
              ProfilesmallCard(
                icon: Icons.phone,
              ),
              ProfilesmallCard(
                icon: Icons.telegram,
              ),
              ProfilesmallCard(
                icon: MdiIcons.email,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(2.h),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey[400]!),
                  color: myWhite),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: RowProfile(
                    icon: Icons.person,
                    title: "Edit Profile".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: InkWell(
                    onTap: (() => Get.to(() => ChangePassword(),
                        binding: ChangePassBinding())),
                    child: RowProfile(
                      icon: Icons.lock,
                      title: "Change Password".tr,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: RowProfile(
                    icon: Icons.shopping_bag,
                    title: "My orders".tr,
                  ),
                )
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.h),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey[400]!),
                  color: myWhite),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: InkWell(
                    onTap: (() => Get.defaultDialog(
                        backgroundColor: myWhite,
                        buttonColor: myGreen,
                        title: "Language".tr,
                        titleStyle: TextStyle(fontWeight: FontWeight.bold),
                        content: Column(children: [
                          GetBuilder<LanguageController>(
                              init: LanguageController(),
                              builder: (controller) => Column(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            controller.changeLang("ar");
                                            navigator!.pop();
                                          },
                                          child: Text(
                                            "Arabic".tr,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: myGreen),
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            controller.changeLang("en");
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "English".tr,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: myGreen),
                                          ))
                                    ],
                                  )),
                        ]))),
                    child: RowProfile(
                      icon: Icons.translate,
                      title: "lan".tr,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.h),
                  child: RowProfile(
                    icon: Icons.logout,
                    title: "Logout".tr,
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
