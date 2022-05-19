import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/account_widget.dart';
import 'package:fooddelivery/widgets/app_icon.dart';
import 'package:fooddelivery/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        title: BigText(text: "Profile", size: Dimensions.iconSize24, color: Colors.white,),
      ),
      body: Container(
        margin: EdgeInsets.only(top: Dimensions.height20),
        width: double.maxFinite,
        child: Column(children: [
          //profile icon
          AppIcon(icon: Icons.person,
          backgroundColor: AppColors.mainColor,
          iconColor: Colors.white,
          iconSize: Dimensions.height15*5,
          size: Dimensions.height15*10,),

          SizedBox(height: Dimensions.height30),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //name
              AccountWidget(appIcon: AppIcon(icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              iconSize: Dimensions.height10*5/2,
              size: Dimensions.height10*5,), bigText: BigText(text: "Akramul"),),
            
              SizedBox(height: Dimensions.height20),
              //phone
              AccountWidget(appIcon: AppIcon(icon: Icons.phone,
              backgroundColor: AppColors.yellowColor,
              iconColor: Colors.white,
              iconSize: Dimensions.height10*5/2,
              size: Dimensions.height10*5,), bigText: BigText(text: "123456789"),),
            
              SizedBox(height: Dimensions.height20),
              //email
              AccountWidget(appIcon: AppIcon(icon: Icons.email,
              backgroundColor: AppColors.yellowColor,
              iconColor: Colors.white,
              iconSize: Dimensions.height10*5/2,
              size: Dimensions.height10*5,), bigText: BigText(text: "e@mail.com"),),
            
              SizedBox(height: Dimensions.height20),
              //address
              AccountWidget(appIcon: AppIcon(icon: Icons.location_on,
              backgroundColor: AppColors.yellowColor,
              iconColor: Colors.white,
              iconSize: Dimensions.height10*5/2,
              size: Dimensions.height10*5,), bigText: BigText(text: "Fill in your address"),),
            
              SizedBox(height: Dimensions.height20),
              //message
              AccountWidget(appIcon: AppIcon(icon: Icons.message_outlined,
              backgroundColor: Colors.redAccent,
              iconColor: Colors.white,
              iconSize: Dimensions.height10*5/2,
              size: Dimensions.height10*5,), bigText: BigText(text: "Akramul"),),
            
              SizedBox(height: Dimensions.height20),

              AccountWidget(appIcon: AppIcon(icon: Icons.message_outlined,
              backgroundColor: Colors.redAccent,
              iconColor: Colors.white,
              iconSize: Dimensions.height10*5/2,
              size: Dimensions.height10*5,), bigText: BigText(text: "Akramul"),),
            
              SizedBox(height: Dimensions.height20),

              AccountWidget(appIcon: AppIcon(icon: Icons.message_outlined,
              backgroundColor: Colors.redAccent,
              iconColor: Colors.white,
              iconSize: Dimensions.height10*5/2,
              size: Dimensions.height10*5,), bigText: BigText(text: "Akramul"),),
            
              SizedBox(height: Dimensions.height20),
                ],
              ),
            ),
          ),
        ],),
      ),
    );
  }
}