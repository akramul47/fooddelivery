import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/colors.dart';
import 'package:fooddelivery/widgets/text_field_input.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../routes/route_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32,),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Container(),
            flex: 2,),
            //svg image
            // SvgPicture.asset('assets/ic_instagram.svg',
            // color: primaryColor,
            // height: 64,),
            // const SizedBox(height: 64,),

            //email
            TextFieldInput(textEditingController: _emailController,
             hintText: "Enter your bkash number",
              textInputType: TextInputType.emailAddress),
              const SizedBox(height: 24,),
            //password
            TextFieldInput(textEditingController: _passwordController,
             hintText: "Enter your Trx ID",
              textInputType: TextInputType.text,
              isPass: false,),
              const SizedBox(height: 24,),
            //button login
            GestureDetector(
              onTap: () {
               Get.toNamed(RouteHelper.getInitial());
              },
              child: Container(child: const Text("Check out"),
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                )
              )),),
            ),
            const SizedBox(height: 12,),
            //signup
            
          ],
        ),
      ))
    );
  }
}