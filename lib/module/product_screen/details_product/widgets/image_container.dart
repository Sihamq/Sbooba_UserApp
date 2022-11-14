import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../shared/my_colors.dart';

class ImageContainer extends StatelessWidget {
  var pageController = PageController();
  ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            height: 35.h,
            width: 100.w,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: PageView.builder(
              // padEnds: false,
              //pageSnapping: false,
              // allowImplicitScrolling: true,
              controller: pageController,

              itemCount: 3,
              itemBuilder: (context, index) => Container(
                  width: 100.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/b.jpg",
                          ),
                          fit: BoxFit.fill))),
            )),
        Positioned(
          bottom: 45.w,
          left: 2.h,
          child: InkWell(
            onTap: () => navigator!.pop(),
            child: Container(
                height: 100,
                // width: 100,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: myWhite,
                    ),
                    Text(
                      "Product Details".tr,
                      style: TextStyle(
                          color: myWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    )
                  ],
                )),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.h),
          child: SmoothPageIndicator(
            effect: ScrollingDotsEffect(
              dotHeight: 13,
              dotWidth: 13,
              activeDotColor: myGreen,
              spacing: 20,
              dotColor: myWhite,
            ),
            controller: pageController,
            count: 3,
          ),
        ),
      ],
    );
  }
}
