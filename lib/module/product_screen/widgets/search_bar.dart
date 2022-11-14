import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatelessWidget {
  var searchController = TextEditingController();
  SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(.1.h),
      child: Card(
        elevation: 5,
        child: Wrap(spacing: 1, children: [
          Card(
            elevation: 5,
            child: Icon(
              Icons.filter_list_rounded,
              size: 27.sp,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(
            height: 5.h,
            width: 60.w,
            child: TextFormField(
                focusNode: FocusNode(canRequestFocus: true),
                keyboardType: TextInputType.name,
                controller: searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      gapPadding: 0.0, borderSide: BorderSide.none),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20.sp,
                    color: Colors.grey[400],
                  ),
                  hintText: "searchpro".tr,
                  hintStyle: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.bold),
                )),
          ),
          MaterialButton(
              height: 5.h,
              minWidth: 25.w,
              color: myGreen,
              onPressed: () {},
              child: Text(
                "Search".tr,
                style: TextStyle(color: myWhite, fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
