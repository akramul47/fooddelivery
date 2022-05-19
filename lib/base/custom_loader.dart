import 'package:flutter/material.dart';
import 'package:fooddelivery/controllers/auth_controller.dart';
import 'package:fooddelivery/utils/colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:get/get.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Container(
        height: Dimensions.height10*10,
        width: Dimensions.height10*10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20*5/2),
          color: AppColors.mainColor,
        ),
        alignment: Alignment.center,
        child: CircularProgressIndicator(color: Colors.white,),
      ),
    );
  }
}