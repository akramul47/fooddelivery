import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/food/popular_food_detail.dart';
import 'package:fooddelivery/utils/colors.dart';
import 'package:fooddelivery/widgets/big_text.dart';
import 'package:fooddelivery/widgets/small_text.dart';
import 'package:get/get.dart';

import '../../controllers/popular_product_controller.dart';
import '../../controllers/recommended_product_controller.dart';
import 'food_page_body.dart';
import 'package:fooddelivery/utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {

  Future<void> _loadResource() async{
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedrProductList();
  }
  
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      
      child: Column(
        children: [
          // SizedBox(height: Dimensions.height45,),
          //Showing the header
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Bangladesh",
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_city_outlined),
                        SizedBox(
                          width: 2,
                        ),
                        SmallText(text: "Chittagong", color: Colors.black54, size: Dimensions.font16,),
                      ],
                    )
                  ],
                ),
                // Center(
                //   child: Container(
                //     width: Dimensions.height45,
                //     height: Dimensions.height45,
                //     child: Icon(
                //       Icons.search,
                //       color: Colors.white,
                //       size: Dimensions.iconSize24,
                //     ),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(15),
                //       color: AppColors.mainColor,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          //Showing the body
          Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ), onRefresh: _loadResource );
  }
}
