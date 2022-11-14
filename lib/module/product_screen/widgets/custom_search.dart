import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.h,
      width: 100,
      child: Row(
        children: [
          Row(children: [
            Card(
              child: Icon(MdiIcons.filterVariant),
              elevation: 3,
            ),
            Container(
              decoration: BoxDecoration(
                color: myWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(),
            )
          ]),
        ],
      ),
    );
  }
}
