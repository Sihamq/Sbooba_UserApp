import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/module/product_screen/details_product/details_product.dart';
import 'package:sboba_user_app/module/product_screen/product_controller.dart';
import 'package:sboba_user_app/module/product_screen/widgets/custom_search.dart';
import 'package:sboba_user_app/module/product_screen/widgets/pro_cateogry_card.dart';
import 'package:sboba_user_app/module/product_screen/widgets/search_bar.dart';
import 'package:sizer/sizer.dart';

import '../home_page/widgets/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProductsController());
    return GetBuilder<ProductsController>(
      builder: (controller) =>
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  return ProCateogrysCard(
                    x: index,
                  );
                }),
          ),
        ),
        // SizedBox(
        //   height: 20,
        // ),
        // Padding(
        //   padding: EdgeInsets.all(1.h),
        //   child: SearchCard(),
        // ),
        SearchBar(),
        Expanded(
          child: GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
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
