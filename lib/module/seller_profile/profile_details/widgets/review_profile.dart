import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sboba_user_app/module/seller_profile/profile_details/widgets/review_card.dart';
import 'package:sizer/sizer.dart';

class ReviewProfile extends StatelessWidget {
  const ReviewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ReviewCard(),
        separatorBuilder: (context, index) => SizedBox(
              height: 1.h,
            ),
        itemCount: 3);
  }
}
