import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:instabook_source/Screens/SignUp/signupscreen.dart';
import 'package:instabook_source/Screens/login/loginscreen.dart';
import 'package:instabook_source/constants/colors.dart';
import 'package:instabook_source/widgets/general_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // height: 400,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "images/rectangle2.svg",
                    width: MediaQuery.of(context).size.width,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                        ),
                        Container(
                          child: Image.asset(
                            "images/logo.png",
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "All your notes, \nwhen you need them,\n wherever you are",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: blackColor,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Column(
              children: [
                GeneralButton(
                  onpress: () {
                    Get.to(() => const LoginScreen());
                  },
                  centerText: "Sign In",
                ),
                SizedBox(
                  height: 20.h,
                ),
                GeneralButton(
                  onpress: () {
                    Get.to(() => const SignUpScreen());
                  },
                  centerText: "Create a New Account",
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
